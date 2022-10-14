import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_list.dart';

import '../constant/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // creating page controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: PageView.builder(
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
                              color: secondColor,
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              onPressed: () {},
                              child: Text(
                                questions[index].answer!.keys.toList()[i],
                                style: const TextStyle(color: Colors.white),
                              ),
                            )),
                      const SizedBox(
                        height: 30.0,
                      ),
                      OutlinedButton(
                          onPressed: () {},
                          child: const Text('Next Question',
                              style: TextStyle(
                                color: Colors.white,
                              ))),
                    ],
                  );
                })));
  }
}
