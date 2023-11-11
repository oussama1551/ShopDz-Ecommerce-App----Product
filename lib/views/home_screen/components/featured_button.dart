import 'package:shopdz/consts/consts.dart';


Widget featuredButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(icon, width: 60,fit: BoxFit.fill),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.white.width(200).margin(const EdgeInsets.symmetric(horizontal: 4)).padding(const EdgeInsets.all(4)).roundedSM.outerShadowSm.make();
}