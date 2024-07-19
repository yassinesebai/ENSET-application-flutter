import 'package:flutter/material.dart';
import 'package:projet_flutter/views/calculator_view.dart';
import 'package:projet_flutter/views/camera_view.dart';
import 'package:projet_flutter/views/photo_view.dart';
import 'package:projet_flutter/views/resources_view.dart';
import 'package:projet_flutter/views/todo_view.dart';
import 'views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Multi-View App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
      routes: {
        '/todo': (context) => ToDoView(),
        '/resources': (context) => ResourcesView(),
        '/photo': (context) => PhotoView(),
        '/calculator': (context) => CalculatorView(),
        '/camera': (context) => CameraView(),
      },
    );
  }
}
