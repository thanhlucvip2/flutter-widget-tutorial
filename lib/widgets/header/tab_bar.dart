// https://www.youtube.com/watch?v=XSheN4Lkhpc&list=PLlvRDpXh1Se5LTJZDrUF9h1_1AT4Raxjd&index=13

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_widget_of_the_day/widgets/body/RowColumn.dart';
import 'package:flutter_widget_of_the_day/widgets/body/boxshadow.dart';
import 'package:flutter_widget_of_the_day/widgets/body/grid_view.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // chia làm 3 tab
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("TAB BAR")),
        ),
        body: Column(
          children: const [
            // header
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            // body
            Expanded(
              // thêm Expanded để lấy hết phần body
              child: TabBarView(
                children: [
                  BoxShadowWidget(),
                  GridViewWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
