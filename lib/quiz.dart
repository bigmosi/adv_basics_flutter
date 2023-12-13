import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questons_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  
  @override
  State createState() {
    return  _QuizState();
}
}


class _QuizState extends State<Quiz> {
    Widget? activeScreen;

    @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

    void switchScreen() {
      setState(() {
        activeScreen = const QuestionsScreen();
      });
    }

   @override
  Widget build(context) {
   return MaterialApp(
    home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
            )),
            child: activeScreen)),
  );
  }
}