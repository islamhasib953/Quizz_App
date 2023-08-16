import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/category_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 27, 154, 31),
            child: Center(
              child: Image.asset(
                "assets/images/LoginLogo.png",
                height: MediaQuery.of(context).size.height * .2,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 2 / 3,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 226, 216, 216),
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: Column(children: [
            const Text(
              "Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                hintText: "User name",
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 36, 4, 240), width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.visibility),
                hintText: "Password",
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 36, 4, 240), width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("New to quiz app?"),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => CategoryScreen(),
                  ),
                );
              },
              child: const Text("Login"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  backgroundColor: Colors.green,
                  elevation: 10,
                  minimumSize: const Size(130, 40)),
            ),
            const SizedBox(
              height: 15,
            ),
            const Icon(
              Icons.fingerprint,
              color: Colors.blue,
              size: 50,
            ),
            const Text(
              "Touch ID",
              style: TextStyle(color: Colors.grey),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text("Remember me"),
                  ],
                ),

                // Spacer(),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forget password",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ]),
        )
      ],
    ));
  }
}
