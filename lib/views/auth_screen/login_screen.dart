
import 'package:shopdz/consts/consts.dart';
import 'package:shopdz/widgets_common/applogo_widget.dart';
import 'package:shopdz/widgets_common/our_button.dart';
import 'package:shopdz/widgets_common/bg_widget.dart';
import 'package:shopdz/widgets_common/custom_textfield.dart';
import 'package:shopdz/consts/lists.dart';
import 'package:get/get.dart';
import 'package:shopdz/views/auth_screen/signup_screen.dart';
import 'package:shopdz/views/home_screen/home.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
      resizeToAvoidBottomInset: false ,
      body: Center(
        child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          10.heightBox,
          "Log in to DzPro".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Column(
            children: [
              customTextField(hint: emailHint,title: email),
              customTextField(hint: passwordHint,title: password),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed:  () {}, child: forgetPass.text.make()) ,
              ),
              5.heightBox,
              ourButton(color: redColor, textColor: whiteColor,title: login,onPress:() {
                Get.to(() => const Home() );
              } ).box.width(context.screenWidth -50).make(),
              5.heightBox,
              creatNewAccount.text.color(fontGrey).make(),
              5.heightBox,
              ourButton(color: lightGolden, textColor: redColor,title: signup,onPress:() {
                Get.to((() => const SignupScreen()));
              } ).box.width(context.screenWidth -50).make(),
              10.heightBox,
              loginWith.text.color(fontGrey).make(),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) => Padding(
                padding : const EdgeInsets.all(8.0),
                child:
                CircleAvatar(
                  backgroundColor: lightGrey,
                  radius: 23,
                  child: Image.asset(socialIconList[index],
                  width:30
                  ),
                )),
              )
              )
              
            ],

          ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make()
        ]),
      ),

    ));
  }
}