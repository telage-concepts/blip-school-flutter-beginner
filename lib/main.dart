import 'package:blipschoolflutterbeginner/pages/animatedcontainer.dart';
import 'package:blipschoolflutterbeginner/pages/conclusionanimation.dart';
import 'package:blipschoolflutterbeginner/pages/customanimation.dart';
import 'package:blipschoolflutterbeginner/pages/home_page.dart';
import 'package:blipschoolflutterbeginner/pages/animation.dart';
import 'package:blipschoolflutterbeginner/workingwithdata/fetchingdatafromapi.dart';
import 'package:blipschoolflutterbeginner/workingwithdata/list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Animations',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedContainerExample()));
                },
                child: Text('Go to Animationcontainer')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedOpacityExample()));
                },
                child: Text('Go to animated opacity')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomAnimationExample()));
                },
                child: Text('Go to Custom Animation')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CombinedAnimationExample()));
                },
                child: Text('Go to putting everything together')),
            SizedBox(
              height: 20,
            ),
            Text(
              'working with data (listview, grid view and REST Api)',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyListView()));
                },
                child: Text('Go to Animationcontainer')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyGridView()));
                },
                child: Text('Go to animated opacity')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHttpWidget()));
                },
                child: Text('Go to Custom Animation')),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
