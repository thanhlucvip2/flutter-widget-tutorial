import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_widget_of_the_day/devices/responsive.dart';
import 'package:flutter_widget_of_the_day/devices/size_config.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: SizeConfig.blockSizeHorizontal(context) * 100,
                      height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                      color: Colors.red[500],
                    ),
                    Container(
                      width: SizeConfig.blockSizeHorizontal(context) * 50,
                      height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                      color: Colors.red[400],
                    ),
                    Container(
                      width: SizeConfig.blockSizeHorizontal(context) * 25,
                      height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                      color: Colors.red[300],
                    )
                  ],
                ),
              ),
              if (Responsive.isTablet(context))
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal(context) * 100,
                        height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                        color: Colors.blue[500],
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal(context) * 50,
                        height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                        color: Colors.blue[400],
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal(context) * 25,
                        height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                        color: Colors.blue[300],
                      )
                    ],
                  ),
                )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: SizeConfig.blockSizeHorizontal(context) * 25,
                      height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                      color: Colors.blue[300],
                    ),
                    Container(
                      width: SizeConfig.blockSizeHorizontal(context) * 50,
                      height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                      color: Colors.blue[400],
                    ),
                    Container(
                      width: SizeConfig.blockSizeHorizontal(context) * 100,
                      height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                      color: Colors.blue[500],
                    ),
                  ],
                ),
              ),
              if (Responsive.isTablet(context))
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal(context) * 25,
                        height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                        color: Colors.red[300],
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal(context) * 50,
                        height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                        color: Colors.red[400],
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal(context) * 100,
                        height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                        color: Colors.red[500],
                      ),
                    ],
                  ),
                )
            ],
          ),
          Row(
            children: [
              if (Responsive.isMobile(context))
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal(context) * 25,
                        height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                        color: Colors.red[300],
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal(context) * 50,
                        height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                        color: Colors.red[400],
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal(context) * 100,
                        height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                        color: Colors.red[500],
                      ),
                    ],
                  ),
                ),
              if (Responsive.isMobile(context))
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal(context) * 100,
                        height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                        color: Colors.blue[500],
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal(context) * 50,
                        height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                        color: Colors.blue[400],
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal(context) * 25,
                        height: SizeConfig.blockSizeVertical(context) * 50 / 3,
                        color: Colors.blue[300],
                      )
                    ],
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
