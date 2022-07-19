import 'package:flutter/material.dart';

class RWidgets {
  Widget dateContainer(Color color, String text) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(13.0)),
      padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
      ),
    );
  }

  Widget dotText() {
    return const Text(
      ". . . .",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30.0, fontFamily: "Poppins"),
    );
  }
}
