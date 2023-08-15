import 'package:donut_app/Helpers/suggestion_card_details.dart';
import 'package:donut_app/components/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helpers/text_helper.dart';
import 'icon_bar.dart';

class SuggestionCards extends StatelessWidget {
 final SuggestionDetails details;
  const SuggestionCards({super.key,
    required this.details
  });

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 4,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(width: 250,child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  // clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(20)
                    ,child: Image.asset(details.assetPath,height: 190,fit: BoxFit.fill,)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconBar(icon: Icons.favorite,
                    radius: 20,),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CText(text: details.title,
                        styles: TextStyleItems(
                            fontSize: 20,
                            family: "Roboto Bold",
                            color: Color(0xff322d55)
                        ),),
                      Container(
                        width: 80,
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.yellow.withOpacity(0.3)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star,size: 20,color: Colors.yellowAccent.shade700,),
                            Text(details.rate.toString(),textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.yellowAccent.shade700,
                                  fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),),

                    ],
                  ),
                  CText(text: details.discount??"",
                    styles: TextStyleItems(
                        color: Colors.grey,
                        family: "Roboto Regular"
                    ),),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CText(text: "\$${details.price}",
                        styles: TextStyleItems(
                            fontSize: 30,
                            color: Color(0xff322d55),
                            family: "Roboto Bold"
                        ),),
                      IconBar(icon: Icons.shopping_cart,
                        color: Color(0xff322d55),
                        radius: 25,
                        padding: 10,
                        iconColor: Colors.white,

                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
