import 'package:flutter/material.dart';

Expanded numberTextField() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TextFormField(
            decoration: const InputDecoration(
          border: InputBorder.none,
          label: Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Enter a Number to Get Fact",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          fillColor: Colors.deepPurpleAccent,
          filled: true,
        )),
      ),
    ),
  );
}
