import 'package:donut_app/page/home.dart';
import 'package:donut_app/page/suggestation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoutes,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: const Home(),
    );
  }
}


 Route? generateRoutes(RouteSettings settings){
     switch(settings.name){
       case "/":
         return PageTransition(child: Home(), type: PageTransitionType.leftToRight);
       case "/suggestions":
           return PageTransition(child: Suggestation(), type: PageTransitionType.rightToLeft);

       default:
         return null;
     }

}






