import 'package:dastur2/home.dart';
import 'package:dastur2/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: homepage(),
        routes: {
          // RoyhatdanOtish.id:(context)=>RoyhatdanOtish(),
          homepage.id: (context) => homepage(),
          royhatdan_otish.id:(context)=>royhatdan_otish()
        }
    );
  }
  }
