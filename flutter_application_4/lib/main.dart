import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'doc.dart';
import 'espaco.dart';

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
          title: Text("Atividade"),
          backgroundColor: Colors.red,
          centerTitle: true,
          
        ),
        bottomNavigationBar: BottomAppBar(
    color: Colors.red  ,
    child: Text("teste",style: TextStyle(fontSize: 40,color: Colors.white),textAlign: TextAlign.center,),

    
  ),
  
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 150,height: 150,child: Image.network("https://images.pexels.com/photos/1268530/pexels-photo-1268530.jpeg?auto=compress&cs=tinysrgb&w=1600"),),
              espaco(),
              DecoratedBox(decoration: BoxDecoration (),
              child: Center(child: Text("Bem Vindo a aula de Desenvolvimento de aplicativos móveis",style: TextStyle(fontSize: 20),),),
               ),
               espaco(),
               DecoratedBox(decoration: BoxDecoration(), child: Center(child: Text("Aqui você vai econtrar:",style: TextStyle(fontSize: 16),),),
               ),
               espaco(),
              Doc("Teste1"),
              Doc("Teste2"),
              Doc("Teste3")  
            ],
            
          )
        )
        
      )
      
    );
  }
}