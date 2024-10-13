import 'package:flutter/material.dart';
import 'package:numberfactfinder/APIs/fact_api.dart';

Padding sendButton(Function updateTriviaText, TextEditingController inputText, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: () async {
        String number = inputText.text;
        if (number.isNotEmpty) {
          final result = await getNumberFact(number: number);
          updateTriviaText(result.text ?? "No Trivia Fount");
        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text("! Please Enter The Number")));
        }
      },
      child: const Center(child: Icon(Icons.send)),
    ),
  );
}
