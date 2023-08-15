import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedElevated extends StatelessWidget {
  const RoundedElevated({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
gradient: const LinearGradient(
  colors: [
      Color(0xff4d467c),
      Color(0xff322d55),
  ]
),
          boxShadow: [
            BoxShadow(color: Colors.black12,blurRadius: 30),
            // BoxShadow(color: Colors.black12,spreadRadius: 9),
          ],
          color: Colors.red,
          borderRadius: BorderRadius.circular(100)
        ),
        width: MediaQuery.of(context).size.width,
          child:
          Center(child: Text("Add",textAlign: TextAlign.center,
           style: TextStyle(
             color: Colors.white,
             fontWeight: FontWeight.bold,
             fontFamily: "Roboto Bold",
             fontSize: 25
           ),))),
    );
  }
}
