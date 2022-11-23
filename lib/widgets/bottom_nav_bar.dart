import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_widget_of_the_day/widgets/RowColumn.dart';
import 'package:flutter_widget_of_the_day/widgets/boxshadow.dart';
import 'package:flutter_widget_of_the_day/widgets/grid_view.dart';
import 'package:flutter_widget_of_the_day/widgets/list_view_builder.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  _changeIndexItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _page = [
    BoxShadowWidget(),
    GridViewWidget(),
    RowColumnWidget(),
    ListViewBuilderWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(child: _page[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:
            _currentIndex, // thuộc tính chỉ định đang ở item button nào trong danh sách
        onTap: _changeIndexItem, // hàm change item button
        type: BottomNavigationBarType
            .fixed, // khi có 4 item trở lên thì phải bật fixed
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "BoxShadowWidget"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: "GridViewWidget"),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc), label: "RowColumnWidget"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: "ListViewBuilderWidget"),
        ],
      ),
    );
  }
}
