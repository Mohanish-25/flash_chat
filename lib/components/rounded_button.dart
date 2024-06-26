import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color colour;

  RoundedButton(this.title, this.onPressed, this.colour);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          highlightColor:
              Colors.transparent, // Set highlight color to transparent
          splashColor: Colors.transparent,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ), // Set splash color to transparent
        ),
      ),
    );
  }
}
