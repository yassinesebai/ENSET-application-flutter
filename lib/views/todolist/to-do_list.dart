
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/todo_model.dart';

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ToDoModel>(
      builder: (context, toDoModel, child) {
        return ListView.builder(
          itemCount: toDoModel.tasks.length,
          itemBuilder: (context, index) {
            final task = toDoModel.tasks[index];
            return ListTile(
              title: Text(
                task.title,
                style: TextStyle(
                  decoration: task.isCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      task.isCompleted
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                    ),
                    onPressed: () {
                      toDoModel.toggleTaskCompletion(index);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      toDoModel.removeTask(index);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
