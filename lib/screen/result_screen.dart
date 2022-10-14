import 'package:flutter/material.dart';
import 'package:quiz_app/screen/homepage.dart';

import '../constant/color.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen({required this.score, super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Congratulations',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 18),
              const Text('Your score is: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(height: 50.0),
              Text(
                '${widget.score}',
                style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 80,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 60),
              MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  color: Colors.orange,
                  textColor: Colors.white,
                  elevation: 0,
                  child: const Text('Repeat the Quiz')),
            ],
          ),
        ));
  }
}
