import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  @override
  _Pagina createState() => _Pagina();
}

class _Pagina extends State<Pagina> {
  List<String> todos = [];
  String newTodo = "";

  void addTodo() {
    if (newTodo.isNotEmpty) {
      setState(() {
        todos.add(newTodo);
        newTodo = ""; // Limpar o campo de texto
      });
    } else {
      // Adicione a lógica de tratamento de erro, se desejado
      // Por exemplo, exibir uma mensagem de erro
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Erro'),
            content: Text('O campo "Adicionar tarefa" não pode estar vazio.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  void removeTodo(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }

  void clearList() {
    setState(() {
      todos.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        newTodo = text;
                      });
                    },
                    onSubmitted: (text) {
                      addTodo();
                    },
                    decoration: InputDecoration(
                      hintText: 'Adicionar tarefa...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: addTodo,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(todos[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      removeTodo(index);
                    },
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: clearList,
            child: Text('Limpar Lista'),
          ),
        ],
      ),
    );
  }
}
