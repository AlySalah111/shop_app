import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key, 
  required this.image, 
  required this.text, 
  required this.onPressed,
  
  });
final String image;
final String text;
final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(onPressed: onPressed,
      
      style: ButtonStyle(
        shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.grey.shade300)
            ,
            
          ),
        ),
      ),
       icon: SvgPicture.asset(image),
       label: Text(text,),
       ),
    );
  }
}