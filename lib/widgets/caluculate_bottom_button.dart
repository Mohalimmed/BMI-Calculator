import 'package:flutter/material.dart';

class CalculateBottom extends StatelessWidget {
  const CalculateBottom({super.key, required this.text, required this.onTap});

final String text;
final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.pink,
        width: double.infinity,
        margin: EdgeInsets.only(top: 15.0),
        height: 80,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}