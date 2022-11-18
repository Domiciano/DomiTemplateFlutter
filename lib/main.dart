import 'package:domitemplate_flutter/screens/third_screen.dart';
import 'package:domitemplate_flutter/viewmodels/SecondViewModel.dart';
import 'package:domitemplate_flutter/viewmodels/ThirdViewModel.dart';
import 'package:provider/provider.dart';
import './screens/second_screen.dart';
import './screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SecondViewModel()),
        ChangeNotifierProvider(create: (_) => ThirdViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: 'main',
        routes: {
          'main': (BuildContext context) => const MainScreen(title: 'Alfa'),
          'second': (BuildContext context) => const SecondScreen(title: 'Alfa'),
          'third': (BuildContext context) => const ThirdScreen(title: 'Alfa'),
        },
      )
    );
    
  }
}
