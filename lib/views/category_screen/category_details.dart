import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shopdz/consts/consts.dart';
import 'package:shopdz/views/category_screen/item_details.dart';
import 'package:shopdz/widgets_common/bg_widget.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) =>
                   "Men's suits".text.size(12).fontFamily(semibold).color(darkFontGrey).makeCentered()
                   .box.white.roundedSM.size(120,60).margin(const EdgeInsets.symmetric(horizontal: 4)).make()),
                ),
              ),
              20.heightBox,

              //itemss container
              Expanded(child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 250,mainAxisSpacing: 8,crossAxisSpacing: 8), 
              itemBuilder: (contextt,index) {
                return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imgP6,width: 200,height: 150,fit: BoxFit.cover
                            ,),
                            10.heightBox,
                            "Athletic Shoe ".text.fontFamily(semibold).color(darkFontGrey ).make(),
                            10.heightBox,
                            "6000 DA".text.color(redColor).fontFamily(bold).size(16).make()
                          ],
                        ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.outerShadowSm.padding(const EdgeInsets.all(12)).make()
                        .onTap(() {
                          Get.to(() => const ItemDetails(title: "Dummy item"));
                        });
              }))
            ],
          ),
        ),
      )
    );
  }
}