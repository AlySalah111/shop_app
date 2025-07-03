import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/core/utils/app_images.dart';
import 'package:shop_app/features/splash/view/widgets/splash_view-body.dart';

class SplahView extends StatelessWidget {
  const SplahView({super.key});
static const routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SplashViewBody(),
    );
  }
}