import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.pinkAccent,
      elevation: 10, // box shadow dưới app bar
      title: Center(child: Text("APP BAR")),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ), // icon button bên trái màn hình
      actions: [
        IconButton(
          icon: Icon(Icons.ad_units),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.vaccines),
          onPressed: () {},
        ),
      ], // icon button bên phải màn hình
    );
  }
}
