import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.title});

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  

  void openActivity() {
      Navigator.pushNamed(context, 'second');
  }

  void openFullActivity(){
      Navigator.pushNamed(context, 'third');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(onPressed: openActivity, child: Text('Open Activity')),
            TextButton(onPressed: openFullActivity, child: Text('Open Activity of Fragments')),
          ],
        ),
      )
    );
  }
}
