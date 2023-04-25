import 'package:flutter/foundation.dart';
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
          title: Text("************"),
          backgroundColor: Colors.pink,
          centerTitle: true,
        ), 
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DecoratedBox(decoration: BoxDecoration (color: Color.fromARGB(255, 18, 211, 60)),
              child: Padding(padding: EdgeInsets.all(10), child: Text("A", style: TextStyle(fontSize: 20))),
               ), DecoratedBox(
                decoration: BoxDecoration(color: Color.fromARGB(255, 185, 52, 12)),
                 child: Padding(padding: EdgeInsets.all(10), child: Text("A", style: TextStyle(fontSize: 20)))
                 ),                               
                 
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    DecoratedBox(decoration: BoxDecoration( color: Color.fromARGB(255, 116, 0, 248)),
                    child: Padding(padding: EdgeInsets.all(10),
                    child: Text("A", style: TextStyle(fontSize: 20))))
                  ,
                  
                    DecoratedBox(decoration: BoxDecoration(color: Color.fromARGB(255, 64, 37, 216)),
                    child: Padding(padding: EdgeInsets.all(10),
                    child: Text("A", style: TextStyle(fontSize: 20))))
                  ,
                    DecoratedBox(decoration: BoxDecoration(color: Color.fromARGB(255, 30, 181, 201)),
                    child: Padding(padding: EdgeInsets.all(10),
                    child: Text("A", style: TextStyle(fontSize: 20)))) 
                     ]),
                     
                    
            ],
            
          )
        )
      )
    );
  }
}