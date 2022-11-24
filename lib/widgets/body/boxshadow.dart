import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BoxShadowWidget extends StatelessWidget {
  const BoxShadowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // padding: EdgeInsets.all(20),
        alignment:
            Alignment.center, // vị trí của child trong box Alignment( x, y )
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle, // hình tròn
          // border: Border.all(
          //   color: Colors.black, // màu border
          //   width: 5,
          // ),
          color: Colors.grey[200],
          // borderRadius: BorderRadius.circular(15),
          boxShadow: [
            // dạng stack, box ở sau đè lên box ở trước
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15.0, // độ nhòe của box
              spreadRadius: 1.0, // độ loang rộng của box
              blurStyle: BlurStyle.normal, // style của box
            ),
            BoxShadow(
              color: Colors.white38,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0, // độ nhòe của box
              spreadRadius: 1.0, // độ loang rộng của box
              blurStyle: BlurStyle.normal, // style của box
            ),
          ],
        ),
        child: Text(
          "hello",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
