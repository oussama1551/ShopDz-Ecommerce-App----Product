

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopdz/consts/consts.dart';
import 'package:shopdz/views/home_screen/sellerauth.dart';

import '../auth_screen/login_screen.dart';

Widget MyDrawerList() {
  return Container(
    padding: const EdgeInsets.only(top: 15),
    child: Column(
      children: [
        menuItem(1,"Dashboard",Icons.dashboard_outlined),
        menuItem(1,"Selling",Icons.sell),
        menuItem(1,"My Orders",Icons.my_library_books_rounded),
        menuItem(1,"Wishlist",Icons.favorite),
        menuItem(1,"Services",Icons.room_service_sharp),
        menuItem(1,"Payment",Icons.payment),
        menuItem(1,"History",Icons.history),
        menuItem(1,"Settings",Icons.settings),
        menuItem(1,"Notifications",Icons.notification_important),
        menuItem(1,"Support",Icons.support_agent),
        menuItem(1,"Privacy policy",Icons.privacy_tip),
        menuItem(1,"Send feedback",Icons.feedback),
      ],
    ),
  );
}

Widget menuItem(int id,String title,IconData icon){
  return Material(
    child: InkWell(
      onTap: () {
        Get.to(() => const SellerUi());
      },
      child: Padding(
        padding : const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(child: Icon(icon,size: 20,color: Colors.black,)),
            Expanded(flex:4, child : Text(title,style:TextStyle(fontSize: 16,color: Colors.black)))
          ],
        ),
      ),
    ),
  );
}