import 'dart:ffi';

import 'package:exercicio/main.dart';
import 'package:flutter/material.dart';

class MyEX extends StatefulWidget{
  const MyEX({super.key});

  @override
  State<MyEX> createState() => _myExState();
}
class _myExState extends State<MyEX>{
  int cont = 0;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            DecoratedBox(decoration: BoxDecoration(),
            child: Center(child: Image.network('https://cdn-icons-png.flaticon.com/512/46/46913.png')),),
            DecoratedBox(decoration: BoxDecoration(),
            child: Center(child: Text("Contador usando Stateful Widget")),),
            DecoratedBox(decoration: BoxDecoration(),
            child: FloatingActionButton(onPressed: ()
            {
              menos();
            }),
            ),
            DecoratedBox(decoration: BoxDecoration(color: Colors.cyan),)
        ],) 
        ),
    );
  }
void menos(){
  if(cont==0){

  }
  else{
  cont = cont-1;
  }
}
}