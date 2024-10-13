import 'package:flutter/material.dart';

Padding sendButton() {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: () {},
      child: const Center(child: Icon(Icons.send)),
    ),
  );
}
