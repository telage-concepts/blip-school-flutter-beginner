import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TO DO'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Center(
            child:  Text('second Screen'),
          ),
          ///-----------------------
          ///using named route
          ///--------------------------
          ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/namedroute');}, child: Text('Go to named route Page'))
        ],
      ),
    );
  }
}
