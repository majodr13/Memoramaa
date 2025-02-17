import 'package:flutter/material.dart';
import 'package:memorama/widgets/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Memorama",
      theme: ThemeData(
          fontFamily: "kanit", primarySwatch: Colors.pink),
      initialRoute: "home",
      routes: {"home": (context) => Home()},
    );
  }
}
