import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay _timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    void _showTimePicker() {
      showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(), // khởi tạo time
      ).then((value) {
        // hàm được gọi lại khi change time
        setState(() {
          _timeOfDay = value!;
        });
      });
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _timeOfDay.toString(),
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: _showTimePicker,
              color: Colors.deepPurple[400],
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Choose Time",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
