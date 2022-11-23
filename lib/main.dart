import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_day/widgets/list_view_builder.dart';

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
        backgroundColor: Colors.grey[200],
        body: SafeArea(child: ListViewBuilderWidget()),
      ),
    );
  }
}
