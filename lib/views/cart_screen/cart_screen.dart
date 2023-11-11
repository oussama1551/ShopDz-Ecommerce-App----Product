
import 'package:shopdz/consts/consts.dart';
import 'package:shopdz/consts/lists.dart';
import 'package:shopdz/widgets_common/our_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: "Shopping cart"
        .text
        .color(darkFontGrey)
        .fontFamily(semibold)
        .make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(child: 
            Container(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context , int index) {
                    return ListTile(
                      leading: Image.asset(cartlistimages[index]),
                      title: carttitelsimages[index].text.fontFamily(semibold).size(16).make(),
                      subtitle: "1000".numCurrency.text.color(redColor).fontFamily(semibold).make(),
                      trailing: const Icon(Icons.delete,color: redColor,),
                    );
                  },
                ),
              )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Total price".text.fontFamily(semibold).color(darkFontGrey).make(),
                "3000".numCurrency.text.fontFamily(semibold).color(redColor).make()
              ],
            ).box.padding(EdgeInsets.all(12)).color(lightGolden).width(context.screenWidth -60).roundedSM.make(),
            10.heightBox,  
            SizedBox(
              width: context.screenWidth - 60,
              child: ourButton(
                color: redColor,
                onPress: () {},
                textColor: whiteColor,
                title: "Proceed to shippig"
              ),
            )
          ],
        ),
      ),

    );
  }
}