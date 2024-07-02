
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/articlemodel.dart';
import '../services/NewsServices.dart';
import 'NewsTile.dart';

class NewsTileList extends StatefulWidget {

   NewsTileList({
    super.key,
  });

  @override
  State<NewsTileList> createState() => _NewsTileListState();
}

class _NewsTileListState extends State<NewsTileList> {
  bool isloading=true;
   List<articleModel> articles=[];
  @override
  initState() {
    getnews();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return isloading? Center(child: CircularProgressIndicator()) :  SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, indix) {

              return newstile(articlemodell: articles[indix],);
            }));

    // return ListView.builder(
    //   //TO BUILD ALL CHILD
    //   //shrinkWrap: true,
    //     physics: BouncingScrollPhysics(),
    //
    //     scrollDirection: Axis.vertical,
    //     itemCount: articles.length,
    //     itemBuilder: (context, indix) {
    //       return newstile(articlemodell: articles[indix],);
    //     });
  }

 Future<void> getnews()async{

   articles=await Newsservices().get_generalnews();
   isloading=false;
   setState(() {

   });

  }
}

