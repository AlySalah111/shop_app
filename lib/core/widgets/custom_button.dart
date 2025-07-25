import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_colors.dart';
import 'package:shop_app/core/utils/app_textStyle.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key,
    required this.onPressed,
    required this.text,});

VoidCallback onPressed;
String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed:onPressed,
         child: Text(text,style: TextStyles.bold16.copyWith(
          color: Colors.white,
         ),)
         ),
    );
  }
}