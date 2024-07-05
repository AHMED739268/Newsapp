//
// ** this is the old way for refactor the code the NewsTileList_Builder2 is new way to refactor it **

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../model/articlemodel.dart';
// import '../services/NewsServices.dart';
// import 'NewsTileList.dart';
//
// class NewsTileList_Builder extends StatefulWidget {
//   const NewsTileList_Builder({
//     super.key,
//   });
//
//   @override
//   State<NewsTileList_Builder> createState() => _NewsTileList_BuilderState();
// }
//
// class _NewsTileList_BuilderState extends State<NewsTileList_Builder> {
//
//   bool isloading=true;
//   List<articleModel> articles=[];
//   @override
//   initState() {
//
//     getnews();
//     isloading=false;
//
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return isloading? SliverFillRemaining(child:  Center(child: CircularProgressIndicator())) :
//     articles.isEmpty?  SliverFillRemaining(child: Center(child: Text('sorry no data loading')))
//         : NewsTileList(articles:articles);
//   }
//   Future<void> getnews()async{
//
//     articles=await NewsServices().getGeneralNews();
//     isloading=false;
//     setState(() {
//
//     });
//
//   }
// }
