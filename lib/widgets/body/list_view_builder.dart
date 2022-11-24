import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewBuilderWidget extends StatelessWidget {
  ListViewBuilderWidget({super.key});
  final List _post = [
    'post1',
    'post2',
    'post3',
    'post4',
    'post5',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (context, index) {
                return _MyCircle('$index');
              },
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            child: ListView.builder(
              // scrollDirection: Axis.horizontal,// dạng scroll ngang
              scrollDirection: Axis.vertical, // dạng scroll dọc
              itemCount: _post.length,
              itemBuilder: (context, index) {
                return _MySquare(_post[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _MySquare extends StatelessWidget {
  final String name;
  const _MySquare(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        height: 300,
        color: Colors.amber,
        child: Center(child: Text(name)),
      ),
    );
  }
}

class _MyCircle extends StatelessWidget {
  const _MyCircle(this.name, {super.key});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.greenAccent,
          ),
          child: Center(child: Text(name))),
    );
  }
}
