import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/core/helper_function/constant/constants.dart';
import 'package:shop_app/core/helper_function/services/preferences.dart';
import 'package:shop_app/core/utils/app_colors.dart';
import 'package:shop_app/core/widgets/custom_button.dart';
import 'package:shop_app/features/auth/views/login_view.dart';
import 'package:shop_app/features/on_boarding/views/widgets/boarding_body.dart';

class OnBoardingViews extends StatefulWidget {
  const OnBoardingViews({super.key});
static const routeName = 'onBoarding';

  @override
  State<OnBoardingViews> createState() => _OnBoardingViewsState();
}

class _OnBoardingViewsState extends State<OnBoardingViews> {
  late PageController pageController ;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
        currentPage = pageController.page!.round();
        setState(() {
          
        });
    });
    super.initState();
  }
  @override
  void dispose() {
  pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              children: [
                OnBoardingPageBody(
                  pageController: pageController,
                ),
              ],
            ),
          ),
          DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: currentPage ==1 ?AppColors.primaryColor: AppColors.primaryColor.withOpacity(0.5)
            ),
            ),
            Visibility(
              visible: currentPage == 1 ?true : false,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomButton(onPressed: (){
                  Prefs.setBool(kOnBoardingScreenViewd, true);
                  Navigator.pushReplacementNamed(context, LoginView.routeName);
                }, text: 'ابدأ الان'),
              ),
            ),
            SizedBox(
              height: 43
              ,
            ),
        ],
      ),
    );
  }
}