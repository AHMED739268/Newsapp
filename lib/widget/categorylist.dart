import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/categorymodel.dart';
import '../views/bussieness_view.dart';
import '../views/entertaiment_view.dart';
import 'category_widget.dart';

class CategoryList extends StatelessWidget {
  CategoryList({Key? key}) : super(key: key);

  final List<categorymodel> categories = [
    categorymodel(name: 'business', imagepath: 'assets/buss.jpeg'),
    categorymodel(name: 'entertaiment', imagepath: 'assets/entertaiment.avif'),
    categorymodel(name: 'general', imagepath: 'assets/general.avif'),
    categorymodel(name: 'health', imagepath: 'assets/health.avif'),
    categorymodel(name: 'science', imagepath: 'assets/science.avif'),
    categorymodel(name: 'sports', imagepath: 'assets/sports.avif'),
    categorymodel(name: 'technology', imagepath: 'assets/technology.jpeg')
  ];

  @override
  Widget build(BuildContext context) {
    // Define the ontap function within the build method
    categories[0].ontap = (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
          return bussinessview();
        }),
      );
    };
    categories[1].ontap = (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
          return entertaimentview();
        }),
      );
    };


    return Container(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryWidget(category: categories[index]);
        },
      ),
    );
  }
}
