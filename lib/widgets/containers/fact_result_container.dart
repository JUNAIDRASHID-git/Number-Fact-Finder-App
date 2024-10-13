import 'package:flutter/material.dart';

Container factResultContainer(BuildContext context, String? triviaText) {
  return Container(
    height: 400,
    width: MediaQuery.of(context).size.width * 0.95,
    decoration: BoxDecoration(
        color: const Color.fromARGB(118, 104, 58, 183),
        borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        triviaText ?? "Enter Number and Get Fact",
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  );
}
