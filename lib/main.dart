import 'package:flutter/material.dart';
import 'package:shop_app/core/helper_function/on_generate_route.dart';
import 'package:shop_app/features/splash/view/splash_screen.dart';

void main() {
  runApp(const fruitHub());
}

class fruitHub extends StatelessWidget {
  const fruitHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute:onGenerateRoute ,
    initialRoute: SplahView.routeName,
    
  );
  
  }
}