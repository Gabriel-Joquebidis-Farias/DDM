import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navegacao/home.dart';
import 'person.dart';
import 'basket.dart';
import 'favorite.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
     // home: const MyHomePage(title: 'Flutter Demo Home Page'),
     routes: {
      '/' : (context)=> MyHome(), 
      '/person' : (context)=> Person(), 
      '/basket': (context)=> Basket(),   
      '/favorite': (context)=> Favorite(), 

     },
    );
  }
}
