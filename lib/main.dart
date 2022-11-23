import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_day/widgets/grid_view.dart';
import 'package:flutter_widget_of_the_day/widgets/list_view_builder.dart';

void main() {
  runApp(const MyDeviceWg());
}

class MyDeviceWg extends StatelessWidget {
  const MyDeviceWg({super.key});

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    );
  }
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
        body: SafeArea(child: GridViewWidget()),
      ),
    );
  }
}
