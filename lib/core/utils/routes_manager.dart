import 'package:flutter/material.dart';
import 'package:movies/presentation/screens/home/home.dart';
import 'package:movies/presentation/screens/home/tabs/home/detials/home_details.dart';

class RoutesManager{

  static const String home ='/home';
  static const String homeDetails ='/homeDetails';


  static Route? router(RouteSettings setting){
    switch(setting.name){
      case home:
        return MaterialPageRoute(builder: (context) => Home(),);
      case homeDetails:
        return MaterialPageRoute(builder: (context) => HomeDetails(),);
    }
  }


}