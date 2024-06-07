import 'package:flutter/material.dart';

class namedRoute extends StatefulWidget {
  const namedRoute({super.key});

  @override
  State<namedRoute> createState() => _namedRouteState();
}

class _namedRouteState extends State<namedRoute> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TO DO'),
        elevation: 0,
      ),
      body: Center(
        child:  Text('second Screen'),
      ),
    );
  }
}
