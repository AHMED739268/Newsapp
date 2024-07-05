import 'package:flutter/material.dart';
import '../model/categorymodel.dart';
import '../views/clickablewidget_view.dart';

class CategoryWidget extends StatefulWidget {
  final categorymodel category;

  CategoryWidget({Key? key, required this.category}) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Preload the image
    if (widget.category.imagepath != null) {
      precacheImage(AssetImage(widget.category.imagepath!), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ClickableWidgetView(categoryy: widget.category.name,),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 15, left: 10),
        height: 90,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.orange,
          image: widget.category.imagepath != null
              ? DecorationImage(
            image: AssetImage(widget.category.imagepath!),
            fit: BoxFit.fill,
          )
              : null,
        ),
        child: Center(
          child: Text(
            widget.category.name!,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
