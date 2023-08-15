import 'package:donut_app/Helpers/suggestion_card_details.dart';
import 'package:donut_app/Helpers/text_helper.dart';
import 'package:donut_app/components/icon_bar.dart';
import 'package:donut_app/components/rate_bar.dart';
import 'package:donut_app/components/suggestion_cards.dart';
import 'package:donut_app/components/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/sugestion_header.dart';
import '../components/trends.dart';

class Suggestation extends StatefulWidget {
  const Suggestation({super.key});

  @override
  State<Suggestation> createState() => _SuggestationState();
}

class _SuggestationState extends State<Suggestation> {

  final listSuggestions=<SuggestionDetails>[
    SuggestionDetails(assetPath: "assets/dn-1.jpg", title: "Sweet Donuts", price: 389.99, rate: 4.8,discount: "20 % off"),
    SuggestionDetails(assetPath: "assets/dn-2.jpg", title: "Chocolate", price: 200.99, rate: 3.8,discount: "20 % off"),
    SuggestionDetails(assetPath: "assets/dn-3.jpg", title: "Hum Donuts", price: 50.99, rate: 4.3,discount: "20 % off"),
    SuggestionDetails(assetPath: "assets/dn-4.jpg", title: "Ice Donut", price: 30.00, rate: 2.5,discount: "20 % off"),
  ];

  final listOfTrends=<SuggestionDetails>[
    SuggestionDetails(assetPath: "assets/dn-5.jpg", title: "Marcon", price: 40, rate: 4.8),
    SuggestionDetails(assetPath: "assets/dn-6.jpg", title: "Cinemon", price: 19.0, rate: 3.8),
    SuggestionDetails(assetPath: "assets/dn-7.jpg", title: "Hot Bo", price: 100.0, rate: 5.0),
    SuggestionDetails(assetPath: "assets/dn-8.jpg", title: "Ice Donut", price: 8.0, rate: 2.5),
  ];
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      backgroundColor:Color(0xfffbfbfb),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              SuggestionHeader(),
              Padding(
                  padding: EdgeInsets.symmetric(
              horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height*0.43,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                            primary: false,
                            itemCount: listSuggestions.length,
                            shrinkWrap: true,
                            itemBuilder: (_,index){
                            var detail=listSuggestions[index];
                              return SuggestionCards(
                                details: detail,

                              );
                            }),
                      ),
                    ],
                  ),
                ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,
              vertical: 10),
              child: CText(text: "Top Trending",
              styles: TextStyleItems(
                fontSize: 30,
                family: "Roboto Bold",
                color: Color(0xff322d55)
              ),),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child:ListView.builder(
                  itemCount: listOfTrends.length,
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (_,index){
                    var item=listOfTrends[index];
                    return  TrendingWidget(
                      details: item
                    );
                  }),
            ),

            

          ],
        ),
      ),
    );
  }
}




