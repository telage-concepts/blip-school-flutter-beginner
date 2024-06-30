import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() => _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: _isExpanded ? 200 : 100,
          height: _isExpanded ? 200 : 100,
          color: _isExpanded ? Colors.blue : Colors.red,
          curve: Curves.easeInOut,
        ),
      ),
    );
  }
}