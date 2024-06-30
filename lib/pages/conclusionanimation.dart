import 'package:flutter/material.dart';

class CombinedAnimationExample extends StatefulWidget {
  @override
  _CombinedAnimationExampleState createState() => _CombinedAnimationExampleState();
}

class _CombinedAnimationExampleState extends State<CombinedAnimationExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _sizeAnimation = Tween<double>(begin: 100, end: 200).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _colorAnimation = ColorTween(begin: Colors.red, end: Colors.blue).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  void _startAnimation() {
    if (_isAnimating) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    _isAnimating = !_isAnimating;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Combined Animation Example')),
      body: Center(
        child: GestureDetector(
          onTap: _startAnimation,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Container(
                width: _sizeAnimation.value,
                height: _sizeAnimation.value,
                color: _colorAnimation.value,
              );
            },
          ),
        ),
      ),
    );
  }
}
