import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_textStyle.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false, // This should be managed by a state management solution
          onChanged: (value) {
            // Handle checkbox state change
          },
        ),
        
           SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.7,
            child:Text.rich(TextSpan(
              children: [
                TextSpan(
                  text: "من خلال إنشاء حساب ، فإنك توافق على",
                  style: TextStyles.regular16.copyWith(color: Colors.grey),
                ),
                TextSpan(
                  text: "الشروط والأحكام",
                  style: TextStyles.semiBold16.copyWith(
                    color: const Color.fromARGB(255, 32, 104, 34),
                    decoration: TextDecoration.underline,
                    
                  ),
                  
                ),
              ]
            ))
           )
      ],
    );
  }
}