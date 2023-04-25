import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class MyDog extends StatelessWidget {
  const MyDog(this.nome,this.cor,this.tamanhoTxt,{super.key});

//Atributos
  final String nome;
  final Color cor;
  final double tamanhoTxt;
  
  @override
  Widget build(BuildContext context) {
    return  DecoratedBox(decoration: BoxDecoration (color: cor ),
              child: Padding(padding: EdgeInsets.all(5), child: Text( nome, style: TextStyle(fontSize: 20))),
               );
  }
}