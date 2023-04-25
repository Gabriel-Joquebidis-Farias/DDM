import 'package:flutter/material.dart';
import 'package:flutter_application_2/my_dog.dart';
import 'my_dog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("*********"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ), 
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyDog("Gabriel",Colors.blue,50),
              MyDog("Biel",Color.fromARGB(255, 93, 202, 148),50),
              MyDog("Gabriel",Color.fromARGB(255, 201, 248, 31),50),
                   SizedBox(
                    height: 180,
                    width: 150,
                    child: Image.network('https://cdn.pixabay.com/photo/2016/10/07/13/41/puzzle-1721592_960_720.jpg')
                  ),
            ],
          )
        )
      )
    );
  }
}