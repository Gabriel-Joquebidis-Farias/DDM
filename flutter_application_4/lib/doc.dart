import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Doc extends StatelessWidget {
  const Doc(this.nome,{super.key});

//Atributos
  final String nome;
  
  
  
  @override
  Widget build(BuildContext context) {
    return  DecoratedBox(decoration: BoxDecoration (),
              child: Padding(padding: EdgeInsets.all(10), child: Text( nome, style: TextStyle(fontSize: 20))),
               );
  }
}