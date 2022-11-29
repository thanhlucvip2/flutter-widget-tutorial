// https://www.youtube.com/watch?v=Gqp0_ZTeH8g&list=PLlvRDpXh1Se5LTJZDrUF9h1_1AT4Raxjd&index=20

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TikTokScrollViewWidget extends StatelessWidget {
  TikTokScrollViewWidget({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 600,
          child: PageView(
            controller: _controller, // định danh
            scrollDirection: Axis.horizontal, // scorll ngang hoặc dọc
            children: const [
              MyPost1(),
              MyPost2(),
              MyPost3(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPost1 extends StatelessWidget {
  const MyPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Text("page 1"),
    );
  }
}

class MyPost3 extends StatelessWidget {
  const MyPost3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text("page 3"),
    );
  }
}

class MyPost2 extends StatelessWidget {
  const MyPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Text("page 2"),
    );
  }
}
