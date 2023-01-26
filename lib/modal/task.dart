import 'package:flutter/foundation.dart';

class Task {
  final String? name;
  bool isdone;
  Task({this.name, this.isdone = false});
  void toggle() {
    isdone = !isdone;
  }
}
