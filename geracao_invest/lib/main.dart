import 'package:flutter/material.dart';
import 'package:geracao_invest/constants.dart';
import 'package:geracao_invest/screens/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Geração Invest",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style:
                TextButton.styleFrom(padding: EdgeInsets.all(defaultPadding)),
          )),
      home: WelcomeScreen(),
    );
  }
}
