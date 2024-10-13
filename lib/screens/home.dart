import 'package:flutter/material.dart';
import 'package:numberfactfinder/widgets/TextFields/number_text_field.dart';
import 'package:numberfactfinder/widgets/containers/fact_result_container.dart';
import 'package:numberfactfinder/widgets/buttons/send_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: const Text(
          "Number Fact Finder",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          factResultContainer(context),
          Row(children: [numberTextField(), sendButton()]),
        ],
      ),
    );
  }
}
