import 'package:flutter/material.dart';
import '../Wedgets/category_container.dart';
import 'package:quiz_app/Screens/quiz_screen.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        for (int i = 0; i < 3; i++)
          CategoryContainer(
            index: i,
          )
      ]),
    );
  }
}
