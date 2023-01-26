import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  Tasktile({this.text, required this.ischeck, this.ischecker, this.longpress});
  final String? text;
  final VoidCallback? longpress;
  final bool ischeck;
  final Function(bool?)? ischecker;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longpress,
        title: Text(
          text!,
          style: ischeck
              ? TextStyle(decoration: TextDecoration.lineThrough)
              : null,
        ),
        trailing: Checkbox(
          activeColor: Colors.amber,
          value: ischeck,
          onChanged: ischecker,
        ));
  }
}
