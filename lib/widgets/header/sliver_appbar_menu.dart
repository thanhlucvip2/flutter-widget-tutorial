// https://www.youtube.com/watch?v=qYnVdXCU1M0&list=PLlvRDpXh1Se5LTJZDrUF9h1_1AT4Raxjd&index=12

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          // ẩn appbar khi scroll
          SliverAppBar(
            leading: Icon(Icons.menu),
            floating:
                true, // khi scoll appbar ẩn đi, khi scroll ngược lại thì appbar được bật lên
            title: Text("SLIVER APP BAR"),
            expandedHeight: 200, // chiều cao tối đa của appbar
            // được dùng khi appbar trở về chiều cao củ
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink,
              ),
              title: Text("Dasdas"),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: Colors.deepPurple,
                  height: 300,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: Colors.deepPurple,
                  height: 300,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: Colors.deepPurple,
                  height: 300,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: Colors.deepPurple,
                  height: 300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
