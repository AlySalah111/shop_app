import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shop_app/core/utils/app_images.dart';
import 'package:shop_app/features/on_boarding/views/on_boarding_views.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBoardingViews.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              SvgPicture.asset( AppImages.planet, ),
            ],
          ),
          SvgPicture.asset(AppImages.logo, ),
          
          SvgPicture.asset(AppImages.bottomImage,
          fit: BoxFit.fill,
          ),
          
        ],
      ),
    );
  }
}