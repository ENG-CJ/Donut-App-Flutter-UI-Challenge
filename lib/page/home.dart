import 'package:donut_app/components/elevated_btn.dart';
import 'package:donut_app/components/price_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/icon_bar.dart';
import '../components/rounded_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Stack(children: [

              SizedBox(
                height: 310,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset("assets/header_image.jpg",
                    fit: BoxFit.fill,),),
              ),
              Padding(
               padding: EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   const IconBar(
                     icon: Icons.favorite,
                   ),
                   IconBar(
                     iconColor: Colors.black,
                     icon: Icons.arrow_back,
                     onClick: ()=> Navigator.of(context).pushNamed("/suggestions"),
                   ),
                 ]
               ),
             )
              
            ]

            )
            ,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow.withOpacity(0.3)
                  ),
                  child: Text("Sweet",textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellowAccent.shade700,
                    fontWeight: FontWeight.bold
                  ),),),
                Text("Sweet Donut",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: "Roboto Bold",
                  color: Color(0xff313866)
                ),),
                SizedBox(height: 10,),
                const Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available",
                style: TextStyle(
                  height: 1.7,
                  fontFamily: "Roboto Light"
                ),),
                SizedBox(height: 20,),
                const Row(
                  children: [
                    Text("Ingrident",
                    style: TextStyle(
                      color: Color(0xffE966A0)
                    ),),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_circle_right_outlined,
                        color: Color(0xffE966A0))
                  ],
                )
              ],
            ),
          ),

          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xfff7f8fa),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )
            ),
              child: const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PriceDetails(),
                  SizedBox(height: 2,),
                  Expanded(
                    child: RoundedElevated()
                  )
                ],
              )

            ),
          )

        ],
      ),
    );
  }
}




