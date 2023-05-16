import 'package:aula1605/basket.dart';
import 'package:aula1605/favorite.dart';
import 'package:aula1605/person.dart';
import 'package:flutter/material.dart';
import 'basket.dart';
import 'person.dart';
import 'favorite.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //Atributos
  int _indice = 0;

  List<Widget> _telas =[
    Person(),
    Basket(),
    Favorite(),
  ] ;
  //metodo
  void _itemCLicado(int index){
    setState(() {
      _indice = index;
    });
   /* switch(index){
      case 0 :
      Navigator.pushNamed(context, '/person');
      break;
      case 1 :
      Navigator.pushNamed(context, '/basket');
      break;
      case 2:
      Navigator.pushNamed(context, '/favorite');
      break;

    }*/
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/person');
          },
          icon: Icon(Icons.person)),
          IconButton(onPressed:(){
          Navigator.pushNamed(context, '/basket');

          },
          icon: Icon(Icons.shopping_basket)),
          IconButton(onPressed:(){
        Navigator.pushNamed(context, '/favorite');
          },

           icon: Icon(Icons.favorite)),
      ],
      ),
      body: _telas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indice,
        onTap: _itemCLicado,
        items: [
      BottomNavigationBarItem(icon: Icon(Icons.person),
      label: "Person",
      ), 
      BottomNavigationBarItem(icon: Icon(Icons.sports_basketball),
      label: "basket",
      ), 
      BottomNavigationBarItem(icon: Icon(Icons.favorite),
      label: "favorite",
      ), 

      ],)
    );
  }
}