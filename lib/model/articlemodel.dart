import 'articlemodel.dart';

class articleModel {

  String? image;
  String? title;
  String? subtitle;


  articleModel(
      {required this.image, required this.title, required this.subtitle});
//named constracutor
   factory articleModel.fromjson(json){

  return articleModel(image: json['urlToImage']
      , title: json['title']
      , subtitle:json['description']


  );


  }
}
//
// class sourcee {
//   String? id;
//   String? name;
//   sourcee({required this.id,required this.name});
//
//   }



