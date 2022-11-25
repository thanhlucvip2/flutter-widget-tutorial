import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment:
              AlignmentDirectional.center, // vị trí các stack chồng lên nhau
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.blue[200],
            ),
            Container(
              width: 250,
              height: 250,
              color: Colors.blue[300],
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue[400],
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.blue[500],
            ),
          ],
        ),
      ),
    );
  }
}
