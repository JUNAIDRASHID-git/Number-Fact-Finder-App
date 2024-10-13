import 'package:flutter/material.dart';

Container factResultContainer(BuildContext context) {
  return Container(
    height: 400,
    width: MediaQuery.of(context).size.width * 0.95,
    decoration: BoxDecoration(
        color: const Color.fromARGB(118, 104, 58, 183),
        borderRadius: BorderRadius.circular(10)),
  );
}
