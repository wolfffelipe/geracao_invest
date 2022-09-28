import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geracao_invest/constants.dart';
import 'package:geracao_invest/screens/auth/sign_up_screen.dart';
import 'package:geracao_invest/screens/auth/sign_in_screen.dart';
import 'package:geracao_invest/screens/home/home.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        SvgPicture.asset(
          "assets/icons/splash_bg.svg",
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              children: [
                Spacer(),
                //SvgPicture.asset("assets/icons/gerda_logo.svg"),
                Text(
                  "advisor",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.white),
                ),
                Text(
                  "por Geração Invest",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 216, 216, 216)),
                ),
                Spacer(),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SignUpScreen()))
                            },
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xFF6CD8D1)),
                        child: Text("Cadastrar-se"))),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => SignInScreen()))
                              },
                          style: TextButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Color(0xFF6CD8D1)))),
                          child: Text("Entrar"))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Home()))
                              },
                          style: TextButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Color(0xFF6CD8D1)))),
                          child: Text("Home teste"))),
                ),
                const SizedBox(
                  height: defaultPadding,
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
