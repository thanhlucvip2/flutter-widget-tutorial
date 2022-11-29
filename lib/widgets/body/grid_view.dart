// https://www.youtube.com/watch?v=nUBMK7UEQ1Q&list=PLlvRDpXh1Se5LTJZDrUF9h1_1AT4Raxjd&index=7

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: GridView.builder(
        // physics: NeverScrollableScrollPhysics(), // chặn scroll
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:
              300, // chiều rộng tối đa của box để cắt xuống dòng
          // ví dụ width của device là 900 thì sẽ giàn thành 3 cột, mỗi cột 300
          childAspectRatio: 3 /
              2, // tỉ lệ chiều rộng và cao, rộng 3 phần thì cao 2 phần của box
          crossAxisSpacing: 1, // độ rộng theo chiều dọc của các box
          mainAxisSpacing: 1, // độ rộng theo chiều ngang của các box
        ),
        // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        // crossAxisCount: 4, // số lượng cột theo chiều ngang
        //   crossAxisSpacing: 1, // độ rộng theo chiều dọc của các box
        //   mainAxisSpacing: 1, // độ rộng theo chiều ngang của các box
        // ),
        itemBuilder: (context, index) {
          return Container(
            width: 50,
            height: 50,
            color: Colors.blueGrey,
            child: Center(child: Text('$width')),
          );
        },
      ),
    );
  }
}

class GridViewCount extends StatelessWidget {
  const GridViewCount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // số lượng cột theo chiều ngang
      mainAxisSpacing: 10, // khoảng cách giửa cách box theo chiều dọc
      crossAxisSpacing: 10, // khoảng cách giửa cách box theo chiều ngang
      children: [
        Container(
          width: 10,
          height: 10,
          color: Colors.amber,
        ),
        Container(
          width: 10,
          height: 10,
          color: Colors.amber,
        ),
        Container(
          width: 10,
          height: 10,
          color: Colors.amber,
        ),
        Container(
          width: 10,
          height: 10,
          color: Colors.amber,
        ),
        Container(
          width: 10,
          height: 10,
          color: Colors.amber,
        ),
        Container(
          width: 10,
          height: 10,
          color: Colors.amber,
        ),
        Container(
          width: 10,
          height: 10,
          color: Colors.amber,
        ),
        Container(
          width: 10,
          height: 10,
          color: Colors.amber,
        ),
      ],
    );
  }
}
