import 'package:flutter/material.dart';
import 'package:plant/screens/trivia_box.dart';
import 'package:plant/tools/diseaseClass.dart';
import 'package:plant/tools/triviaClass.dart';

class TriviaSelections extends StatefulWidget {
  @override
  _TriviaSelectionsState createState() => _TriviaSelectionsState();
}

class _TriviaSelectionsState extends State<TriviaSelections> {
  @override
  Widget build(BuildContext context) {
    final trivias = TriviaClass.getTriviaClass();
    final _tri = DiseaseClass.getDiseaseClass();
  //  print("this is trivia below:");
  //  print(_tri[0].trivia[2].question);
    return ListView.builder(itemCount: trivias.length,
    itemBuilder:(context,index)
    {
      return TriviaBox(item:trivias[index]);
    });
  }
}


