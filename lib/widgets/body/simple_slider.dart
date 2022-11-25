import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SimpleSliderWidget extends StatefulWidget {
  const SimpleSliderWidget({super.key});

  @override
  State<SimpleSliderWidget> createState() => _SimpleSliderWidgetState();
}

class _SimpleSliderWidgetState extends State<SimpleSliderWidget> {
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_currentValue',
            style: TextStyle(fontSize: 30),
          ),
          Slider(
            value: _currentValue,
            min: 0,
            max: 10,
            divisions: 10, // chia bố cục slider thành 10 phần
            label: _currentValue.toString(), // label khi kéo slider
            activeColor: Colors.red, // màu thanh slider đã kéo
            inactiveColor: Colors.blue, // màu thanh slider chưa kéo
            thumbColor: Colors.yellow, // màu nút point trên slider
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
