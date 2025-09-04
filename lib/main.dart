import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zomato_ui/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Zomato UI', 
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const Homepage(),
      );
    });
  }
}

