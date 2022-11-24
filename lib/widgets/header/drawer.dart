import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_widget_of_the_day/widgets/body/grid_view.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      //    drawer ở bên trái
      drawer: _Drawer(),
      // drawer ở bển phải
      endDrawer: _Drawer(),
    );
  }
}

class _Drawer extends StatelessWidget {
  const _Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.pink,
      child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text("dsa"),
            ),
          ), // header Drawer
          ListTile(
            leading: Icon(Icons.home),
            title: const Text(
              'Page1',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const GridViewWidget();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
