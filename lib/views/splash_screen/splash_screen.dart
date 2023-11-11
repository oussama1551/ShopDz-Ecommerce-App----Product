import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopdz/consts/consts.dart';
import 'package:shopdz/views/auth_screen/login_screen.dart';
import 'package:shopdz/views/home_screen/home.dart';
import 'package:shopdz/views/home_screen/home_screen.dart';
import 'package:shopdz/widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  //method change screen
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      //using getX
      Get.to(() => const Home());
    });
  }
  @override
  void initState() {
    changeScreen();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(child: Column(children: [
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset(icSplashBg,width: 300),
        ),
        20.heightBox,
        applogoWidget(),
        10.heightBox,
        appname.text.fontFamily(bold).size(22).white.make(),
        5.heightBox,
        appversion.text.white.make(),
        const Spacer(),
        //credits.text.white.fontFamily(semibold).size(10).make(),
        10.heightBox,

        
      ],)),

    );
  }
}