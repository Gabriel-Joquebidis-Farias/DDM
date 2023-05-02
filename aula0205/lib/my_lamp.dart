import 'package:aula0205/main.dart';
import 'package:flutter/material.dart';

class MyLamp extends StatefulWidget{
  const MyLamp({super.key});
  

  @override
  State<MyLamp> createState() => _MyLampState();
}

class _MyLampState extends State<MyLamp>{
  String lnkImagem = 'https://i.stack.imgur.com/b983w.jpg';
  String mensagem ="desligado";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:Column(
        children: [
          Image.network(lnkImagem),
          Text(mensagem),
          ElevatedButton(
            onPressed: ()
            {
                mudarEstado();
                setState(() {
                  
                });
            }, child: Text("Liga/Desliga"),
            ),
        ],
      )
      )
    );
  }
  
  void mudarEstado(){
    if (mensagem=="desligado"){
      mensagem = "ligado";
      lnkImagem = 'https://i.stack.imgur.com/ybxlO.jpg';
    }
    else{
    String lnkImagem = 'https://i.stack.imgur.com/b983w.jpg';
    String mensagem ="desligado";
    }
  }
}