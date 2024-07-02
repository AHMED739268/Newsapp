import 'package:flutter/material.dart';

import '../model/articlemodel.dart';
import '../services/NewsServices.dart';
import '../widget/NewsTileList.dart';
import '../widget/NewsTileList_Builder.dart';
import '../widget/categorylist.dart';

class homeview extends StatelessWidget {
//named constructor
  homeview._internal();

  static final _instance = homeview._internal();

  factory homeview() => _instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.orange),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),

          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: CategoryList()),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
               NewsTileList_Builder()

            ],
          ),
          // child: Column(
          //
          //   children: [
          //     CategoryList(),
          //     SizedBox(
          //       height: 16,
          //     ),
          //     Expanded(
          //         child: NewsTileList()
          //
          //     ),
          //   ],
          // ),
        ));
  }
}
