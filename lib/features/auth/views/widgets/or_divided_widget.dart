import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shop_app/core/utils/app_textStyle.dart';

class OrDividedWidget extends StatelessWidget {
  const OrDividedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(
          color: Colors.grey,
          thickness: 1,
        )),
        Gap(5),
        Text( "أو",
          style: TextStyles.semiBold16
        ),
         Gap(5),
        Expanded(child: Divider(
          color: Colors.grey,
          thickness: 1,
        )),
       
      ],
    );
  }
}