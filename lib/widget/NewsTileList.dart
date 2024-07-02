
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/articlemodel.dart';
import '../services/NewsServices.dart';
import 'NewsTile.dart';


class NewsTileList extends StatelessWidget {



  List<articleModel>? articles ;
   NewsTileList({super.key,required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles?.length,
                (context, indix) {
              return newstile(articlemodell: articles![indix],);
            })); ;
  }
}







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



