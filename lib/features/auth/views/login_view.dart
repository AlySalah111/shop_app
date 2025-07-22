import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_textStyle.dart';
import 'package:shop_app/core/widgets/custom_appBar.dart';
import 'package:shop_app/features/auth/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,title: 'تسجيل الدخول',
      
      ),
       body: const LoginViewBody(),
    );
  }

 
}