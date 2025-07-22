import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:shop_app/core/utils/app_colors.dart';
import 'package:shop_app/core/utils/app_images.dart';
import 'package:shop_app/core/utils/app_textStyle.dart';
import 'package:shop_app/core/widgets/custom_button.dart';
import 'package:shop_app/core/widgets/custom_text_field.dart';
import 'package:shop_app/features/auth/views/widgets/dont_have_account_widget.dart';
import 'package:shop_app/features/auth/views/widgets/or_divided_widget.dart';
import 'package:shop_app/features/auth/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(25),
            CustomTextFormField(hintText: "تسجيل الدخول", 
              icon: Icon(Icons.email_outlined)),
            Gap(16),
               CustomTextFormField(hintText: "كلمة المرور", 
              icon: Icon(Icons.remove_red_eye_outlined)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  TextButton(onPressed: (){}, 
                  child: Text( "نسيت كلمة المرور؟",
                  style: TextStyles.regular13.copyWith(
                    color: Colors.green,
                  ),
                  ),
                  
                  ),
                ],
              ),
              Gap(33),
              CustomButton(
                onPressed: () {
                  // Handle login action
                },
                text: "تسجيل الدخول",
              ),
              Gap(33),
              dontHaveAccountWidget(),
              Gap(33),
              OrDividedWidget(),
              Gap(16),
              SocialLoginButton(
                image: AppImages.googleIcon,
                 text: "تسجيل الدخول باستخدام جوجل", 
                 onPressed: (){},
                 ),
                 Gap(16),
                 SocialLoginButton(
                image: AppImages.appleIcon,
                 text: "تسجيل الدخول باستخدام أبل", 
                 onPressed: (){},
                 ),
                 Gap(16),
                 SocialLoginButton(
                image: AppImages.facebookIcon,
                 text: "تسجيل الدخول باستخدام فيسبوك", 
                 onPressed: (){},
                 ),
                

          ],
        ),
      ),
    );
  }
}

