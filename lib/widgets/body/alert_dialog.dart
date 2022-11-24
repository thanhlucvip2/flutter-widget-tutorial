import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    _showAlert() {
      showDialog(
        context: context,
        builder: (context) {
          // alert dạng thường : AlertDialog
          // alert dạng iphone : CupertinoAlertDialog
          return AlertDialog(
            // show alert
            title: Text("Title"),
            content: Text("Content "),
            backgroundColor: Colors.deepOrange[100],
            actions: [
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: const Text(
                        "button 1",
                      ),
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: const Text(
                        "button 2",
                      ),
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.orange,
                      onPressed: () {},
                      child: const Text(
                        "button 3",
                      ),
                    ),
                  )
                ],
              )
            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: MaterialButton(
          color: Colors.deepPurple[100],
          onPressed: _showAlert,
          child: Text(
            "show alert",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
