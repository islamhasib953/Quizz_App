import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Screens/login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/background2.jpg",
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            if (MediaQuery.of(context).orientation == Orientation.portrait)
              SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 3,
              ),
            if (MediaQuery.of(context).orientation == Orientation.landscape)
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
              ),
            if (MediaQuery.of(context).orientation == Orientation.portrait)
              Image.asset(
                "assets/images/quiz (1).png",
                height: MediaQuery.of(context).size.height * .3,
              ),
            if (MediaQuery.of(context).orientation == Orientation.landscape)
              Image.asset(
                "assets/images/quiz (1).png",
                height: MediaQuery.of(context).size.height * .3,
              ),
            Text(
              "ITI Quiz App",
              style:
                  GoogleFonts.dancingScript(fontSize: 50, color: Colors.yellow),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "We are creative, enjoy our app",
              style: GoogleFonts.pacifico(fontSize: 25, color: Colors.white),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Text("Start")),
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
