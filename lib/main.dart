import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_day/widgets/animations/animated_container.dart';
import 'package:flutter_widget_of_the_day/widgets/animations/icon_animation.dart';
import 'package:flutter_widget_of_the_day/widgets/body/alert_dialog.dart';
import 'package:flutter_widget_of_the_day/widgets/time/date_picker.dart';
import 'package:flutter_widget_of_the_day/widgets/body/input_form.dart';
import 'package:flutter_widget_of_the_day/widgets/body/simple_slider_keo_tha_nut_point.dart';
import 'package:flutter_widget_of_the_day/widgets/body/stack.dart';
import 'package:flutter_widget_of_the_day/widgets/body/tiktok_scroll_view.dart';
import 'package:flutter_widget_of_the_day/widgets/time/time_picker.dart';
import 'package:flutter_widget_of_the_day/widgets/time/set_timeout.dart';
import 'package:flutter_widget_of_the_day/widgets/time/time_scroll.dart';

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
          // brightness: Brightness.dark,
          // primarySwatch: Colors.yellow,
          ),
      home: TimeScrollWidget(),
    );
  }
}
