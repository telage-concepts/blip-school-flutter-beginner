import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  final List<String> items = List<String>.generate(100, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
        );
      },
    );
  }
}

class MyGridView extends StatelessWidget {
  final List<String> items = List<String>.generate(50, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: Center(child: Text(items[index])),
        );
      },
    );
  }
}
