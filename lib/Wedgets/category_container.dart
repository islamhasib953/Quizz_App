import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;
  CategoryContainer({super.key, required this.index});

  List quizName = ["Math Test", "History Test", "Sport Test"];
  List quizColor = [Colors.blue, Colors.yellow, Colors.orange];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const QuizScreen(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: quizColor[index],
          borderRadius: BorderRadius.all(Radius.circular(100)),
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Center(
          child: Text(quizName[index],
              style: GoogleFonts.dancingScript(
                  fontSize: 50, fontWeight: FontWeight.bold)),
        ),
      ),
    ));
  }
}
