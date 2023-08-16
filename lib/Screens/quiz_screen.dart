import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Screens/score_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text("Math test"),
          leading: const Center(
              child: Text(
            "5/10",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          actions: const [
            Padding(
              padding: EdgeInsetsDirectional.only(end: 10),

              /// مهمةةةةةة
              child: Icon(Icons.access_alarm_rounded),
            )
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Q.3 : What the result of 2*5 ? ",
                    style:
                        GoogleFonts.amaranth(color: Colors.red, fontSize: 25),
                  ),
                ),
                for (int i = 0; i < 4; i++)
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const ScoreScreen(),
                          ),
                        );
                      },
                      child: Text("${8 + i}")),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
        ));
  }
}
