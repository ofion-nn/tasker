import 'package:flutter/material.dart';
import 'package:tasker/models/todo.dart';
import 'package:tasker/widgets/todo_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Todo> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: todoList.map((todo) {
          return TodoItem(
            todo: todo,
            onTap: () {
              setState(() {
                todo.completed = !todo.completed;
              });
            },
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            todoList.add(Todo(title: 'asdas', completed: false));
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
