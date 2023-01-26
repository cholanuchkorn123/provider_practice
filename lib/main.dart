import 'package:flutter/material.dart';
import 'package:prcatice_statemanage/modal/task_data.dart';
import 'package:prcatice_statemanage/screen/taskscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Taskdata(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Taskscreen(),
      ),
    );
  }
}
