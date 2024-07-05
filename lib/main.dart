import 'package:flutter/material.dart';

import 'package:mynewsapp/views/home_view.dart';

Future<void> main()  async {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    home:homeview()
    //await Newsservices().get_technolog(),


  ));
  // fun();

}
//to do delay as splash screen
// void fun(){
// Future.delayed(
//
//   const Duration(seconds: 20),()=>print('hello')
// );
//
// }
