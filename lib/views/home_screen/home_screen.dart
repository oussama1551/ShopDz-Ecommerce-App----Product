
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopdz/consts/consts.dart';
import 'package:shopdz/consts/lists.dart';
import 'package:shopdz/views/auth_screen/login_screen.dart';

import '../../widgets_common/home_bottons.dart';
import 'components/featured_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.safePercentHeight,
      child: SafeArea(child: Column(children: [
          RichText(text: const TextSpan(
            children: [
              TextSpan(text: "To shop you must be logged in.", style: TextStyle(
                fontFamily: regular,
                color: fontGrey,
              ) ),
              TextSpan(text: " Login", style: TextStyle(
                fontFamily: bold,
                color: redColor,
              ) ),] )).onTap(() {Get.to(() => const LoginScreen());}),
        20.heightBox,

        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
            //swiper brands
            VxSwiper.builder(
              aspectRatio: 16/9,
              autoPlay: true,
              height: 100,
              enlargeCenterPage: true,
              itemCount: slidersList.length, itemBuilder: (context, index) {
              return Image.asset(
                slidersList[index],
                fit: BoxFit.fill,
              ).box.rounded.clip(Clip.antiAlias).make();
            }),
            20.heightBox,
            //deals buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(2, (index) => homeButtons(
                height: context.screenHeight * 0.15,
                width: context.screenWidth / 2.5,
                icon: index == 0 ? icTodaysDeal : icFlashDeal,
                title: index == 0 ? todayDeal : flashsalle
          
              )),
            ),
            20.heightBox,
            // 2em swiper 
            VxSwiper.builder(
              aspectRatio: 16/9,
              autoPlay: true,
              height: 100,
              enlargeCenterPage: true,
              itemCount: slidersList2.length, itemBuilder: (context, index) {
              return Image.asset(
                slidersList2[index],
                fit: BoxFit.fill,
              ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
            }),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(3, (index) => homeButtons(
                height: context.screenHeight * 0.13,
                width: context.screenWidth / 3.5,
                icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                title: index == 0 ? topCategories : index == 1 ? brand : topSellers,
          
              )),
            ),
            20.heightBox,
            //featured categ
            Align(
              alignment: Alignment.centerLeft,
              child: featuredCatego.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
              20.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(3, (index) => Column(
                    children: [
                      featuredButton(icon : featuredImages1[index],title: featuredTitles1[index]),
                      10.heightBox,
                      featuredButton(icon: featuredImages2[index],title:featureditels2[index])
                    ],
                  )).toList(),
                ),
              ),
              //featured product
              20.heightBox,
              Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                decoration: const BoxDecoration(color:redColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    featuredProduct.text.white.fontFamily(bold).size(18).make(),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(6, (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imgP1,width: 150,fit: BoxFit.cover
                            ,),
                            10.heightBox,
                            "Laptop 4/64GB".text.fontFamily(semibold).color(darkFontGrey ).make(),
                            10.heightBox,
                            "600 DA".text.color(redColor).fontFamily(bold).size(16).make()
                          ],
                    
                        ).box.white.margin(const EdgeInsets.symmetric(horizontal: 8)).roundedSM.padding(const EdgeInsets.all(8)).make(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              20.heightBox,
              //third swiper 
              VxSwiper.builder(
                aspectRatio: 16/9,
                autoPlay: true,
                height: 100,
                enlargeCenterPage: true,
                itemCount: slidersList2.length, itemBuilder: (context, index) {
                return Image.asset(
                  slidersList2[index],
                  fit: BoxFit.fill,
                ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
              }),
              20.heightBox,
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,mainAxisSpacing:8 ,crossAxisSpacing: 8,mainAxisExtent: 300), itemBuilder: (context,index) 
                {
                return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imgP5,width: 200,height: 200,fit: BoxFit.cover
                            ,),
                            const Spacer(),
                            10.heightBox,
                            "Laptop 4/64GB".text.fontFamily(semibold).color(darkFontGrey ).make(),
                            10.heightBox,
                            "600 DA".text.color(redColor).fontFamily(bold).size(16).make()
                          ],
                    
                        ).box.white.margin(const EdgeInsets.symmetric(horizontal: 8)).roundedSM.padding(const EdgeInsets.all(12)).make();
              })
              ],
            ),
          ),
        )



      ],)),
      );
  }
}