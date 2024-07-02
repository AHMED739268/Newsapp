import 'package:flutter/cupertino.dart';

class categorymodel{

  String? name;
  String? imagepath;
  Function(BuildContext)? ontap;


  categorymodel({ required this.name,required this.imagepath,this.ontap});

}