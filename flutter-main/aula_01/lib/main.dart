import 'dart:js_util';

import 'package:flutter/material.dart';

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
            title: Text("Stitch"),
            backgroundColor: Color.fromARGB(255, 43, 2, 93),
            centerTitle: true,
        ),
          body: Center(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DecoratedBox (
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                      child:  Text("Eu", style: TextStyle(fontSize:50)),
                  ),
                  ),
                
                SizedBox(height:30),

                DecoratedBox (
                 decoration: BoxDecoration(color: Colors.deepPurple),
                 child:   Text("Amo", style: TextStyle(fontSize:50)),),
               
                SizedBox(height:30),
                 SizedBox(height:30),     
                 
               DecoratedBox (
                 decoration: BoxDecoration(color: Colors.deepPurple),
                 child:   Text("Tania", style: TextStyle(fontSize:50)),),
                    
                  
               SizedBox(
                height: 80,
                width: 150,
                child: Image.network('https://cdn.pixabay.com/photo/2015/04/08/15/09/daisies-712892_960_720.jpg'),
               )
              ], 
            )
          ),
      )
    );
  }
}

