import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(PlantProApp());
}

class PlantProApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PlantProAppState();
  }
}

class PlantProAppState extends State<PlantProApp> {
  var questionsIndex = 0;
  void answerQuestion() {
    setState(() {
      questionsIndex = questionsIndex + 1;
    });
    print(questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your gender?',
        'answers': ['Male', 'Female', 'Sajat', 'Not Sure']
      },
      {
        'questionText': 'What is your Animal?',
        'answers': ['Cat', 'Dog', 'Octopus', 'Fish']
      },
      {
        'questionText': 'What car are you driving?',
        'answers': ['Golf GTI', 'GTR R34', 'Nissan Sunny']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Plant Pro'),
        ),
        body: Column(
          children: [
            Question(
              questions[questionsIndex]['questionText'] as String,
            ),
            ...(questions[questionsIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
