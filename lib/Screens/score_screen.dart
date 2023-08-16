import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/opening_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
                text: const TextSpan(
                    text: "Congratulations ",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: [
                  TextSpan(
                      text: "Islam \n",
                      style: TextStyle(
                          color: Color.fromARGB(255, 196, 12, 52),
                          fontSize: 25)),
                  TextSpan(text: "your score is "),
                  TextSpan(
                      text: "6/10",
                      style: TextStyle(
                          color: Color.fromARGB(255, 196, 12, 52),
                          fontSize: 25)),
                ])),
            TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const OpeningScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Text("Play again"))
          ],
        ),
      ),
    );
  }
}
