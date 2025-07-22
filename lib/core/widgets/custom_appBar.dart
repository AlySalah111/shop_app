 import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_textStyle.dart';

AppBar customAppBar(context,{required String title}) {
    return AppBar(
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 13),
          child: IconButton( onPressed: () { 
            Navigator.pop(context);
           },
           icon:Icon(Icons.arrow_back_ios) ,),
        ),
      ],
      title:  Text(title,
        style: TextStyles.bold19,
         textAlign: TextAlign.center, 
    ),
    );
  }