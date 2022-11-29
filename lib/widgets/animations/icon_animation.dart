// https://www.youtube.com/watch?v=j6f8lTV6D50&list=PLlvRDpXh1Se5LTJZDrUF9h1_1AT4Raxjd&index=23
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconAnimationWidget extends StatefulWidget {
  IconAnimationWidget({super.key});

  @override
  State<IconAnimationWidget> createState() => _IconAnimationWidgetState();
}

class _IconAnimationWidgetState extends State<IconAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animatedIconController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animatedIconController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
  }

  bool actionicon = false;
  _actionAnimation() {
    if (actionicon == true) {
      _animatedIconController.forward(); // bắt đầu play
    } else if (actionicon == false) {
      _animatedIconController.reverse(); // trở về icon trước

    }
    actionicon = !actionicon;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _actionAnimation,
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow,
            progress: _animatedIconController,
            size: 150,
          ),
        ),
      ),
    );
  }
}
