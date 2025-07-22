import 'package:flutter/material.dart';
import 'package:shop_app/core/helper_function/on_generate_route.dart';
import 'package:shop_app/core/helper_function/services/preferences.dart';
import 'package:shop_app/core/utils/app_colors.dart';
import 'package:shop_app/features/on_boarding/views/on_boarding_views.dart';
import 'package:shop_app/features/splash/view/splash_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  
  runApp(const fruitHub());
}

class fruitHub extends StatelessWidget {
  const fruitHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    theme: ThemeData(
      fontFamily: 'Cairo',
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor)
    ),
    debugShowCheckedModeBanner: false,
    onGenerateRoute:onGenerateRoute ,
    initialRoute: SplahView.routeName,
    home: const OnBoardingViews(),
    
  );
  
  }
}