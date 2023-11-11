
import 'package:shopdz/consts/consts.dart';
import 'package:shopdz/consts/lists.dart';

import '../../widgets_common/bg_widget.dart';
import 'components/details_cards.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(child: Column(
          children: [
            //edit profile button 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.edit,color: whiteColor)),
            ),
            5.heightBox,
            //users details icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(pim,width: 65,fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Oussama1551".text.fontFamily(semibold).white.make(),
                      "belakhdaroussama@gmail.com".text.white.make(),
                    ],
                  )),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: whiteColor)
                    ),
                    onPressed: () {},
                    child: "Log out".text.fontFamily(semibold).white.make(),
                    )
            
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(count: "00",title: "in your cart",width: context.screenWidth / 3.4),
                detailsCard(count: "32",title: "in your wishlist",width: context.screenWidth / 3.4),
                detailsCard(count: "675",title: "in your orders",width: context.screenWidth / 3.4)
              ],
            ),
            //button section
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const Divider(color: lightGrey,);
              },
              itemCount: profileButtonList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(profileButtonIcon[index],
                  width: 22,
                  ),
                  title: profileButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                );
              },
              ).box.white.rounded.margin(const EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make(),



          ],
        )),
      )
    );
  }
}