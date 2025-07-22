import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_textStyle.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,
  required this.hintText, 
   this.icon}
  );
final String hintText;
 final Widget ?icon ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: icon,
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(
          color: Colors.grey
        ),
        filled: true,
        fillColor: Color.fromARGB(255, 231, 233, 230),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(3),
        borderSide: BorderSide(
          width: .1,
        ), 
              );
  }
}