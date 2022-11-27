import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    void _showDatePicker() {
      showDatePicker(
        context: context,
        initialDate: DateTime.now(), // khởi tạo date
        firstDate: DateTime(2000), // khung năm từ năm 2000 đến năm 2025
        lastDate: DateTime(2025),
      ).then(
        (value) {
          setState(() {
            _dateTime = value!;
          });
        }, // hàm được gọi lại khi change date
      );
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                _dateTime.year.toString(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              Text(
                _dateTime.day.toString(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              Text(
                _dateTime.month.toString(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Center(
            child: MaterialButton(
              onPressed: _showDatePicker,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Choose Date",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    );
  }
}
