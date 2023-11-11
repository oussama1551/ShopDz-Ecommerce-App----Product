
import 'package:get/get.dart';
import 'package:shopdz/consts/consts.dart';
import 'package:shopdz/consts/lists.dart';
import 'package:shopdz/views/category_screen/category_details.dart';
import 'package:shopdz/widgets_common/bg_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          title: categories.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 8,crossAxisSpacing: 8,
            mainAxisExtent: 200 
            ) , itemBuilder: (context,index) {
              return Column(
                children: [Image.asset(categoryImages[index],
                height: 120,width: 200,fit: BoxFit.cover,
                ),10.heightBox,
                categorieslist[index].text.color(fontGrey).align(TextAlign.center).make(),
                ],
              ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
                Get.to(() => CategoryDetails(title: categorieslist[index]));
              });
          }),
        ),
      )
    );
  }
}