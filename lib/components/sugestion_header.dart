import 'package:donut_app/components/text_widget.dart';
import 'package:flutter/cupertino.dart';

import '../Helpers/text_helper.dart';

class SuggestionHeader extends StatelessWidget {
  const SuggestionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 56,
          horizontal: 20
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CText(
                text: "Your Best",
                styles: TextStyleItems(
                    fontSize: 28,
                    family: "Roboto Bold",
                    color: Color(0xff322d55)
                ),
              ),
              SizedBox(height: 10,),
              CText(
                text: "Sweet Suggestion",
                styles: TextStyleItems(
                    fontSize: 30,
                    family: "Roboto Bold",
                    color: Color(0xff322d55)
                ),
              ),
            ],
          ),
          SizedBox(
              width: 70,height: 70,child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/profile.jpg")))
        ],
      ),
    );
  }
}