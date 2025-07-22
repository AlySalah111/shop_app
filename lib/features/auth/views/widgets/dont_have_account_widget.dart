import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_textStyle.dart';
import 'package:shop_app/features/auth/views/sign_up_view.dart';

class dontHaveAccountWidget extends StatelessWidget {
  const dontHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, SignUpView.routeName);
          },
          child:Text("إنشاء حساب",
        style: TextStyles.regular16.copyWith(
              color: const Color.fromARGB(255, 32, 104, 34),),
        ),
        ),
        Text(
           "ليس لديك حساب؟",
            style: TextStyles.regular16.copyWith(
              color:  Colors.grey,
          ),
        ),
      ],
    );
  }
}