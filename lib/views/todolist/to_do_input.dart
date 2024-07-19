

import 'package:flutter/material.dart';
import 'package:projet_flutter/models/todo_model.dart';
import 'package:provider/provider.dart';

class ToDoInput extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Enter a task',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(width: 8),
        ElevatedButton(
          onPressed: () {
            if (_controller.text.isNotEmpty) {
              Provider.of<ToDoModel>(context, listen: false)
                  .addTask(_controller.text);
              _controller.clear();
            }
          },
          child: Text('Add'),
        ),
      ],
    );
  }
}
