import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shop_app/core/utils/app_textStyle.dart';
import 'package:shop_app/features/auth/views/login_view.dart';

class PageviewItem extends StatelessWidget {
  const PageviewItem({
    super.key, 
    required this.image, 
    required this.backgroundImage, 
    required this.title, 
    required this.subtitle, required this.isVisible});

final String image, backgroundImage;
final Widget title;
final String subtitle;
final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
        children: [
       SvgPicture.asset(backgroundImage,color: const Color.fromARGB(255, 236, 222, 175),),
       Positioned(child: 
       SvgPicture.asset(image),
       bottom: 20,
       left: 0,
        right: 0,
       ),
       Visibility(
        visible: isVisible,
         child: Padding(
           padding: const EdgeInsets.all(40.0),
           child: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, LoginView.routeName);
            },
            child: 
            Text('تخطي',
            style: TextStyles.regular13,
            ),
            ),
         ),
       )
        ],
      ),
      Gap(36),
        title,
        Gap(24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: 
          Text(subtitle ,
          style: TextStyles.semiBold13,
          textAlign: TextAlign.end,
          ),
        )
        ],
      ),
     
      

    
    );
  }
}