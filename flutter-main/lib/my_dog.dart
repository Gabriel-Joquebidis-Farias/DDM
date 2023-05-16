import 'package:flutter/material.dart';

class Mydog extends StatelessWidget {
  const Mydog (this.nome, this.cor, this.tamText, this.tamBorda,{super.key});

  //ATRIBUTOS
final String nome;
final Color cor;
final double tamText;
final double tamBorda;

  @override
  Widget build(BuildContext context) {
    return  DecoratedBox(
      decoration: BoxDecoration(color:cor ),
      child: Padding(
        padding: EdgeInsets.all(tamBorda),
        child: Text(nome , style: TextStyle(fontSize: tamText),),
      ),
    
    );
  }
}