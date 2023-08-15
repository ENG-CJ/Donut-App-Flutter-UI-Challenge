import 'package:donut_app/Helpers/text_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CText extends StatelessWidget {
  final TextStyleItems? styles;
  final String text;
  const CText({super.key,this.styles,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        color: styles?.color??Colors.black,
        fontSize: styles?.fontSize??14,
        fontFamily: styles?.family??"Roboto Regular",
        fontWeight: styles?.boldWeight??FontWeight.normal,
        height: styles?.height??0,
      ),


    );
  }
}
