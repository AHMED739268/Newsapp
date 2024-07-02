
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/articlemodel.dart';
import '../services/NewsServices.dart';
import 'NewsTileList.dart';

class NewsTileList_Builder extends StatefulWidget {
  const NewsTileList_Builder({
    super.key,
  });

  @override
  State<NewsTileList_Builder> createState() => _NewsTileList_BuilderState();
}

class _NewsTileList_BuilderState extends State<NewsTileList_Builder> {

  bool isloading=true;
  List<articleModel> articles=[];
  @override
  initState() {

    getnews();
    isloading=false;

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return isloading? SliverFillRemaining(child:  Center(child: CircularProgressIndicator())) :
    NewsTileList(articles:articles);
  }
  Future<void> getnews()async{

    articles=await Newsservices().get_generalnews();
    isloading=false;
    setState(() {

    });

  }
}
