import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          // ignore: prefer_const_constructors
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: 300,
        height: 200,
        margin: const EdgeInsets.only(top: 20, left: 50),
        decoration: BoxDecoration(
          color: Color(0xff098983),
          border: Border.all(
              color: Color(0xff4e4706), style: BorderStyle.solid, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Text(
            "moslhi ",
            style: TextStyle(
              color: Color(0xffc80f0f),
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
