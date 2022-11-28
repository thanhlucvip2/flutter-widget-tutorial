import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int timeLeft = 0;
  int test = 1;
  void _startTime() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (test == 1) {
          timeLeft = timeLeft + 1;
          if (timeLeft == 10) {
            test = 0;
          }
        } else if (test == 0) {
          timeLeft = timeLeft - 1;
          if (timeLeft == 0) {
            test = 1;
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('$timeLeft'),
            ElevatedButton(
              onPressed: _startTime,
              child: Text("Start"),
            ),
          ],
        ),
      ),
    );
  }
}
