import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';
import 'package:shopdz/consts/consts.dart';
import 'package:shopdz/views/home_screen/listbuttonseller.dart';
import 'package:shopdz/views/home_screen/radiobuttonsell.dart';
import 'package:shopdz/widgets_common/applogo_widget.dart';
import 'package:shopdz/widgets_common/our_button.dart';
import 'package:shopdz/widgets_common/bg_widget.dart';
import 'package:shopdz/widgets_common/custom_textfield.dart';
import 'package:shopdz/consts/lists.dart';




class SellerUi extends StatefulWidget {
  const SellerUi({super.key});

  @override
  State<SellerUi> createState() => _SellerUiState();
}

class _SellerUiState extends State<SellerUi> {
  bool? isCheck = false;
 @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
      resizeToAvoidBottomInset: false ,
      body: Center(
        child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          20.heightBox,
          "You are not a seller yet".text.fontFamily(bold).white.size(17).make(),
          5.heightBox,
          "Confirm the following information".text.fontFamily(bold).white.size(16).make(),
          25.heightBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextField(hint: "No ..",title: "Commercial Registration No"),
              customTextField(hint: "store name",title: "Store Name"),
              customTextField(hint: "store adress",title: "Store Address"),

              Column(
                
                children: [
                    "Store Type".text.color(redColor).fontFamily(bold).size(16).make(),
                ],
              ),
              
              MyRadioButton(),
                            Column(
                
                children: [
                    "Store Category".text.color(redColor).fontFamily(bold).size(16).make(),
                ],
              ),
              10.heightBox,

                            Container(
                decoration: BoxDecoration(
                  color: lightGrey,
                ),
                child: CheckBoxDropDown(),
              ),
              10.heightBox,
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
              ourButton(color: isCheck == true? redColor : lightGrey , textColor: whiteColor,title: "Confirm",onPress:() {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.SUCCES,
                    animType: AnimType.BOTTOMSLIDE,
                    title: 'Success',
                    desc: 'Your information has been successfully received , the seller space will be available after review',
                    btnOkText: 'Close',
                    btnOkColor: Colors.green,
                    btnOkOnPress: () {},
                  )..show();
              } ).box.width(context.screenWidth -50).make(),
              15.heightBox

              
              
            ],

          ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make()
        ]),
      ),

    ));
  }
}