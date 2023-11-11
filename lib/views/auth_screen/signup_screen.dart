
import 'package:get/get.dart';
import 'package:shopdz/consts/consts.dart';
import 'package:shopdz/widgets_common/applogo_widget.dart';
import 'package:shopdz/widgets_common/our_button.dart';
import 'package:shopdz/widgets_common/bg_widget.dart';
import 'package:shopdz/widgets_common/custom_textfield.dart';
import 'package:shopdz/consts/lists.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
 @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
      resizeToAvoidBottomInset: false ,
      body: Center(
        child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          10.heightBox,
          "Join the DzPro".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Column(
            children: [
              customTextField(hint: nameHint,title: name),
              customTextField(hint: emailHint,title: email),
              customTextField(hint: passwordHint,title: password),
              customTextField(hint: passwordHint,title: retypePassword),
              5.heightBox,
              Row(
                children: [
                  Checkbox(activeColor: redColor,checkColor: whiteColor, value: isCheck ,onChanged: (newValue) {
                    setState(() {
                      isCheck =newValue;
                    });
                  },),
                  10.widthBox,
                  Expanded(child: RichText(text: const TextSpan(
                    children: [
                      TextSpan(text: "I agree to the ", style: TextStyle(
                        fontFamily: regular,
                        color: fontGrey,
                      ) ),
                      TextSpan(text: termAnddCond, style: TextStyle(
                        fontFamily: regular,
                        color: redColor,
                      ) ),
                      TextSpan(text: " & ", style: TextStyle(
                        fontFamily: regular,
                        color: fontGrey,
                      ) ),
                      TextSpan(text: privacyPolicy, style: TextStyle(
                        fontFamily: regular,
                        color: redColor,
                      ) ),
                   ]
                  ))
                  ),
                ],
              ),
              5.heightBox,
              ourButton(color: isCheck == true? redColor : lightGrey , textColor: whiteColor,title: signup,onPress:() {} ).box.width(context.screenWidth -50).make(),
              10.heightBox,
              RichText(text: const TextSpan(
                    children: [
                      TextSpan(text: alreadyhave, style: TextStyle(
                        fontFamily: regular,
                        color: fontGrey,
                      ) ),
                      TextSpan(text: " Login", style: TextStyle(
                        fontFamily: bold,
                        color: redColor,
                      ) ),] )).onTap(() {Get.back();}),

              
              
            ],

          ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make()
        ]),
      ),

    ));
  }
}