import 'package:donut_app/components/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceDetails extends StatefulWidget {
  const PriceDetails({super.key});

  @override
  State<PriceDetails> createState() => _PriceDetailsState();
}

class _PriceDetailsState extends State<PriceDetails> {
   int quantity=1;
   int price=70;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Price",
              style: TextStyle(color: Colors.blueGrey,
                  fontFamily: "Roboto Regular"),),
            const SizedBox(height: 10,),
            Text("\$$price",
              style: const TextStyle(
                  color: Color(0xff2f2e32),
                  fontFamily: "Roboto Bold",
                  fontSize: 30
              ),)
          ],
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [

            RoundedButton(
              onAddOrSubtract: ()=> setState((){
                if(quantity==1)
                  {
                    return;
                  }
                quantity--;
                price-=70;

              }),
              icon: Icons.remove,
              color: Colors.white,
              elevation: 1,
            ),
            SizedBox(width: 30,child: Text("$quantity",textAlign: TextAlign.center,)),
            RoundedButton(
              onAddOrSubtract: ()=> setState((){
                quantity++;
                price+=70;
              }),
              icon: Icons.add,
              color: Colors.white,
              elevation: 3,
            ),
          ],
        )

      ],
    );
  }
}
