import 'package:donut_app/Helpers/suggestion_card_details.dart';
import 'package:donut_app/Helpers/text_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RateBar extends StatelessWidget {
  final SuggestionDetails details;
  final double? width;
  final double? radius;
  const RateBar({super.key,required this.details,this.width,this.radius});


  @override
  Widget build(BuildContext context) {
    return   Container(
      width: width??80,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius??4),
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
      ),);
  }
}
