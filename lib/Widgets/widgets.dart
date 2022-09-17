import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
        required this.color,
        required this.title,
        required this.onPressed})
      : super(key: key);

  final Color color;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Material(
          elevation: 5.0,
          color: color,
          borderRadius: BorderRadius.circular(20.0),
          child: MaterialButton(
            onPressed: () {
              onPressed;
            },
            minWidth: 200,
            height: 42,
            child: Text(
              title, style: const TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
