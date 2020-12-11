import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  final Function onPressed;
  final String label;

  const CustomAppButton({Key key, @required this.onPressed, this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: label == null ? Text("Ok") : Text(label)
    );
  }
}
