import 'package:flutter/material.dart';
import 'package:numberfactfinder/widgets/Bars/home_app_bar.dart';
import 'package:numberfactfinder/widgets/TextFields/number_text_field.dart';
import 'package:numberfactfinder/widgets/buttons/send_button.dart';
import 'package:numberfactfinder/widgets/containers/fact_result_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController inputText = TextEditingController();
  String? triviaText;

  void updateTriviaText(String newText) {
    setState(() {
      triviaText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          factResultContainer(context, triviaText),
          Row(children: [
            numberTextField(inputText),
            sendButton(updateTriviaText, inputText, context)
          ])
        ],
      ),
    );
  }
}
