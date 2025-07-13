import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_colors.dart';
import 'package:shop_app/core/utils/app_images.dart';
import 'package:shop_app/core/utils/app_textStyle.dart';
import 'package:shop_app/features/on_boarding/views/widgets/pageView_item.dart';

class OnBoardingPageBody extends StatelessWidget {
   const OnBoardingPageBody({super.key , required this.pageController});
final PageController pageController ;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageviewItem(
          isVisible: (pageController.hasClients ? pageController.page!.round() :0) == 0,
          image: AppImages.pageViewLogo1,
          backgroundImage: AppImages.pageViewBackGground1,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Fruit',style: TextStyles.bold23.copyWith(color: AppColors.primaryColor)), 
            Text('HUB',style: TextStyles.bold23.copyWith(color: AppColors.secondaryColor) ),
             Text('  مرحبا بك في ',style: TextStyles.bold23),
             
             ],
             
          ),
        ),

        PageviewItem(
          isVisible: (pageController.hasClients ? pageController.page!.round() :0) != 0,
          image: AppImages.pageViewLogo2,
          backgroundImage: AppImages.pageViewBackGground2,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
              
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('ابحث وتسوق',style: TextStyles.bold23),],
          ),
        ),
      ],
    );
  }
}
