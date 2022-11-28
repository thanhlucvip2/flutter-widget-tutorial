import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TimeScrollWidget extends StatefulWidget {
  const TimeScrollWidget({super.key});

  @override
  State<TimeScrollWidget> createState() => _TimeScrollWidgetState();
}

class _TimeScrollWidgetState extends State<TimeScrollWidget> {
  final FixedExtentScrollController _controller = FixedExtentScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListWheelScrollView.useDelegate(
        controller: _controller,
        itemExtent: 50,
        physics:
            FixedExtentScrollPhysics(), // scroll dạng tiktok, luôn scroll qua 1 lượt rồi dừng
        // giây
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: 60,
          builder: (context, index) {
            return Container(
              child: Center(
                child: Text(
                  index.toString(),
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// basic scroll
class ScrollDefault extends StatelessWidget {
  const ScrollDefault({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 70, // độ cong của scroll
      perspective: 0.005, // độ bo tròn  góc của view scroll
      diameterRatio: 2.5, // độ cuộn tròn của scroll
      children: [
        // scroll theo kiểu vòng tròn
        Container(
          child: Center(child: Text('hello')),
          color: Colors.deepPurple[400],
        ),
        Container(
          child: Center(child: Text('hello')),
          color: Colors.deepPurple[400],
        ),
        Container(
          child: Center(child: Text('hello')),
          color: Colors.deepPurple[400],
        ),
        Container(
          child: Center(child: Text('hello')),
          color: Colors.deepPurple[400],
        ),
      ],
    );
  }
}
