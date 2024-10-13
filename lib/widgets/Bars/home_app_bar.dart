import 'package:flutter/material.dart';

AppBar homeAppBar() {
  return AppBar(
    toolbarHeight: 60,
    title: const Text(
      "Number Fact Finder",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    ),
    backgroundColor: Colors.transparent,
  );
}
