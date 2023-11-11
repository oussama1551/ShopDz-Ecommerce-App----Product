
import 'package:get/get.dart';
import 'package:shopdz/consts/consts.dart';
import 'package:shopdz/controllers/home_controller.dart';
import 'package:shopdz/views/account_screen/account_screen.dart';
import 'package:shopdz/views/cart_screen/cart_screen.dart';
import 'package:shopdz/views/category_screen/category_screen..dart';
import 'package:shopdz/views/home_screen/home_screen.dart';

import 'MyDrawerList.dart';
import 'MyHeaderDrawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26,), label: home ),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26,), label: categories ),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26,), label: cart ),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26,), label: account ),
    ];
    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const AccountScreen(),

    ];
    
    return Scaffold(
      appBar: AppBar(backgroundColor: lightGrey,title: Center(child:Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          height: 55,
          color: lightGrey,
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              suffixIcon: Icon(Icons.search),
              filled: true,
              fillColor: lightGrey,
              hintText: searchAny,
              hintStyle: TextStyle(color: textfieldGrey)
            ),
          ),

        ),),),
      body: Column(
        children: [
          Obx(() => Expanded(child: navBody.elementAt(controller.currentNavIndex.value),)),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                 MyHeaderDrawer(),
                 MyDrawerList(),
              ],
              
              //
            ),
          ),
        ),
      ),
      bottomNavigationBar: Obx( ()=> 
        BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
           }
        )
      ),
    );
  }
}