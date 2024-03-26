import 'package:flutter/material.dart';
import 'package:taskat/src/model/todomodel.dart';
import 'package:taskat/src/util/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TodoModel> todolist = [
    TodoModel(description: "Tarefa 1"),
    TodoModel(description: "Tarefa 2"),
    TodoModel(description: "Tarefa 3"),
    TodoModel(description: "Tarefa 4"),
    TodoModel(description: "Tarefa 5"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsHome().appbartitle),
        centerTitle: true,
      ),
      body: ListView(
        children:
            todolist.map((e) => ListTile(title: Text(e.description!))).toList(),
      ),
    );
  }
}
