import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputFormWidget extends StatefulWidget {
  const InputFormWidget({super.key});

  @override
  State<InputFormWidget> createState() => _InputFormWidgetState();
}

class _InputFormWidgetState extends State<InputFormWidget> {
  final _textController = TextEditingController();
  // dùng controller để lấy input từ người dùng

  String _string = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: Center(child: Text(_string))),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(), // bật outline border input
                hintText: "Label", // placeholder trong input
                prefixIcon: IconButton(
                  // button nằm bên trái ổ input
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                suffixIcon: IconButton(
                  // button nằm bên phải ổ input
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      _string = '';
                      _textController.clear(); // clear data trong ô input
                    });
                  },
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  _string = _textController.text;
                });
              },
              color: Colors.blue,
              child: Text("Accest"),
            )
          ],
        ),
      ),
    );
  }
}
