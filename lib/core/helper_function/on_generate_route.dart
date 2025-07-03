import 'package:flutter/material.dart';
import 'package:shop_app/features/on_boarding/views/on_boarding_views.dart';
import 'package:shop_app/features/splash/view/splash_screen.dart';

Route <dynamic>onGenerateRoute(RouteSettings settings){

switch(settings.name){
  case SplahView.routeName:
    return MaterialPageRoute(builder: (context) => const SplahView());

    case OnBoardingViews.routeName:
    return MaterialPageRoute(builder: (context) => const OnBoardingViews()); 
  // Add more cases for other routes as needed
  default:
    return MaterialPageRoute(builder: (context) => const Scaffold());
  }


}