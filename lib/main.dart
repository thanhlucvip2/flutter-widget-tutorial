import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_day/widgets/animations/animated_container.dart';
import 'package:flutter_widget_of_the_day/widgets/animations/icon_animation.dart';
import 'package:flutter_widget_of_the_day/widgets/body/alert_dialog.dart';
import 'package:flutter_widget_of_the_day/widgets/body/input_form.dart';
import 'package:flutter_widget_of_the_day/widgets/body/stack.dart';
import 'package:flutter_widget_of_the_day/widgets/body/tiktok_scroll_view.dart';
import 'package:flutter_widget_of_the_day/widgets/body/timer.dart';

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
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      theme: ThemeData(
          // primarySwatch: Colors.yellow,
          ),
      home: IconAnimationWidget(),
    );
  }
}
