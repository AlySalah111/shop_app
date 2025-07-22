import 'package:flutter/material.dart';
import 'package:shop_app/core/widgets/custom_appBar.dart';
import 'package:shop_app/features/auth/views/widgets/signUp_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
static const String routeName = 'SignUpView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'إنشاء حساب'),
      body:  const SignupViewBody(),
    );
  }
}