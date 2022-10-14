import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_list.dart';

import '../constant/color.dart';
import 'result_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // creating page controller for the pageview

  final PageController _controller = PageController(initialPage: 0);

  // setting up the game variable

  bool isPressed = false;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: PageView.builder(

                // disabling the scrolling inorder to navigate only with the button

                physics: const NeverScrollableScrollPhysics(),
                controller: _controller,
                onPageChanged: (page) {
                  setState(
                    () {
                      isPressed = false;
                    },
                  );
                },
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text('Question ${index + 1}/${questions.length}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 28.0,
                            )),
                      ),
                      const Divider(
                        color: Colors.white,
                        height: 8.0,
                        thickness: 1.0,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        questions[index].question!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 25.0,
                        ),
                      ),
                      const SizedBox(height: 35.0),
                      for (int i = 0; i < questions[index].answer!.length; i++)
                        Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(bottom: 18),
                            child: MaterialButton(
                              shape: const StadiumBorder(),
                              color: isPressed
                                  ? questions[index]
                                          .answer!
                                          .entries
                                          .toList()[i]
                                          .value
                                      ? isTrue
                                      : isWrong
                                  : secondColor,
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              onPressed: isPressed
                                  ? () {}
                                  : () {
                                      setState(() {
                                        isPressed = true;
                                      });
                                      if (questions[index]
                                          .answer!
                                          .entries
                                          .toList()[i]
                                          .value) {
                                        score += 10;
                                        print(score);
                                      }
                                    },
                              child: Text(
                                questions[index].answer!.keys.toList()[i],
                                style: const TextStyle(color: Colors.white),
                              ),
                            )),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        OutlinedButton(
                            onPressed: isPressed
                                ? index + 1 == questions.length
                                    ? () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ResultScreen(
                                                        score: $score)));
                                      }
                                    : () {
                                        _controller.nextPage(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.linear);
                                        setState(() {
                                          isPressed = false;
                                        });
                                      }
                                : null,
                            child: Text(
                                index + 1 == questions.length
                                    ? 'See Result'
                                    : 'Next Question',
                                style: const TextStyle(
                                  color: Colors.white,
                                ))),
                      ]),
                    ],
                  );
                })));
  }
}
