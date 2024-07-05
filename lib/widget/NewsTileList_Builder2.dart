import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/articlemodel.dart';
import '../services/NewsServices.dart';
import 'NewsTileList.dart';

class NewsTileList_Builder2 extends StatefulWidget {
  const NewsTileList_Builder2({
    super.key,
  });

  @override
  State<NewsTileList_Builder2> createState() => _NewsTileList_BuilderState();
}

class _NewsTileList_BuilderState extends State<NewsTileList_Builder2> {
  var articles;

  @override
  void initState() {
    articles = NewsServices().getGeneralNews(category: 'general');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<articleModel>>(
      future: articles,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileList(articles: snapshot.data);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(child: Center(child: Text('Error: ${snapshot.error}')));
        } else {
          return SliverFillRemaining(child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
