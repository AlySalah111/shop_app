import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shop_app/core/widgets/custom_text_field.dart';
import 'package:shop_app/features/auth/views/widgets/terms.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Gap(24),
            CustomTextFormField(
              hintText: 'الاسم الكامل',
            ),
            Gap(16),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              icon: Icon(Icons.email_outlined),
              ),
               Gap(16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              icon: Icon(Icons.remove_red_eye_outlined), 
              ),
              Gap(16),
              TermsAndConditions()
            
        
          ],
        ),
      ),
    );
  }
}