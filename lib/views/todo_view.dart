import 'package:flutter/material.dart';
import 'package:projet_flutter/views/todolist/to-do_list.dart';
import 'package:projet_flutter/views/todolist/to_do_input.dart';
import 'package:provider/provider.dart';
import '../models/todo_model.dart';
import '../widgets/app_drawer.dart';

class ToDoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ToDoModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('To-Do List'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.popAndPushNamed(context, "/");
            },
          ),
        ),

        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ToDoInput(),
            ),
            Expanded(
              child: ToDoList(),
            ),
          ],
        ),
      ),
    );
  }
}