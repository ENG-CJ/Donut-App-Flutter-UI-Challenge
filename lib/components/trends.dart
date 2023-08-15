import 'package:donut_app/components/rate_bar.dart';
import 'package:donut_app/components/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helpers/suggestion_card_details.dart';
import '../Helpers/text_helper.dart';
import 'icon_bar.dart';

class TrendingWidget extends StatelessWidget {
   final SuggestionDetails details;
  const TrendingWidget({
    super.key,
    required this.details
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10)
                      ,child: Image.asset(details.assetPath,height: 70,width: 80,fit: BoxFit.fill,)),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CText(text: details.title,
                        styles: TextStyleItems(
                            fontSize: 20,
                            family: "Roboto Bold",
                            color: Color(0xff696685)
                        ),),
                      SizedBox(height: 16,),
                      RateBar(details: details)

                    ],
                  )

                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconBar(icon: Icons.favorite,iconColor: Colors.white, color: Colors.redAccent.shade100),
                  SizedBox(height: 8,),
                  CText(text: "\$${details.price}",
                    styles: TextStyleItems(
                        fontSize: 20,
                    ),)

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}