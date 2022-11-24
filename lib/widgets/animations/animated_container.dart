import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double boxWidth = 100;
  double boxHeight = 300;
  Color boxColor = Colors.red;
  double boxY = -1;
  double boxX = -1;

  _expandedBox() {
    setState(() {
      boxHeight = boxHeight == 100 ? 300 : 100;
      boxWidth = boxWidth == 300 ? 100 : 300;
      boxColor = boxColor == Colors.red ? Colors.deepPurple : Colors.red;
      boxY = boxY == -1 ? 1 : -1;
      boxX = boxX == -1 ? 1 : -1;
    });
  }

  void setTimeout(void Function() callback, int time) {
    Duration timeDelay = Duration(milliseconds: time);
    Timer(timeDelay, callback);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // cử chỉ trong flutter - https://vncoder.vn/bai-hoc/gesture-trong-flutter-230

      /* GestureDetector
        Tap − Chạm vào bề mặt thiết bị bằng đầu ngón tay trong thời gian ngắn sau đỏ thả ngón tay ra ngay
        Double Tap − Tap 2 lần trong thời gian ngắn
        Drag − Chạm vào bề mặt của thiết bị bằng đầu ngón tay và sau đó di chuyển đầu ngón tay một cách ổn định và cuối cùng thả ngón tay ra.
        Flick − Tương tự như drag nhưng thực hiện nhanh hơn.
        Pinch − Chụm bề mặt của thiết bị bằng hai ngón tay
        Spread/Zoom − Ngược lại với Pinch.
        Panning − Chạm vào bề mặt của thiết bị bằng đầu ngón tay và di chuyển nó theo bất kỳ hướng nào mà không nhả đầu ngón tay.
      */
      onTap: _expandedBox,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Center(
          child: AnimatedContainer(
            // hiệu ứng chuyển động
            alignment: Alignment(boxX, boxY),
            duration: Duration(seconds: 1), // thời gian kết thúc hiệu ứng
            width: boxWidth,
            height: boxHeight,
            color: boxColor,
            child: Text("child"),
          ),
        ),
      ),
    );
  }
}
