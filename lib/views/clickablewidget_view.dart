

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/articlemodel.dart';

import '../services/NewsServices.dart';
import '../widget/NewsTile.dart';


class ClickableWidgetView extends StatefulWidget {
 ClickableWidgetView({super.key,required this.categoryy});
  final String? categoryy;

  @override
  State<ClickableWidgetView> createState() => _ClickableWidgetViewState();
}

class _ClickableWidgetViewState extends State<ClickableWidgetView> {
  late Future<List<articleModel>> articles;





  @override
  void initState() {


    super.initState();
    // Provide a default category if null

    articles = NewsServices().getGeneralNews(category:widget.categoryy.toString());
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('${widget.categoryy.toString().toUpperCase()} NEWS'),
            floating: true,
            snap: true,
          ),
          FutureBuilder<List<articleModel>>(
            future: articles,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) {
                      var article = snapshot.data![index];
                      return newstile(articlemodell: article);
                    },
                    childCount: snapshot.data!.length,
                  ),
                );
              } else if (snapshot.hasError) {
                return SliverFillRemaining(
                  child: Center(child: Text('Error: ${snapshot.error}')),
                );
              } else {
                return SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
