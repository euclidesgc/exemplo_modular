import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  final String label;

  const CustomLabel({Key key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label == null ? "não informado" : label,
    );
  }
}
