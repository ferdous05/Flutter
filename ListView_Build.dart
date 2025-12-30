import 'package:flutter/material.dart';

class ListviewBuild extends StatelessWidget {
  const ListviewBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        title: const Text("List build"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            width: 120,

            color: Colors.green[100 * ((index % 8) + 1)],
            child: Center(
              child: Text("Item $index"),
            ),
          );
        },
      ),
    );
  }
}
