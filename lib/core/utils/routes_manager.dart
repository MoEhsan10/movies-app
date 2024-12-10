import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/presentation/screens/home/home.dart';

class RoutesManager{

  static const String home ='/home';


  static Route? router(RouteSettings setting){
    switch(setting.name){
      case home:
        return MaterialPageRoute(builder: (context) => Home(),);
    }
  }


}