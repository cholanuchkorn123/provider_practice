import 'package:flutter/foundation.dart';
import 'task.dart';

class Taskdata extends ChangeNotifier {
  List<Task> task = [
    Task(name: 'eat'),
    Task(name: 'won'),
    Task(name: 'gobb'),
  ];

  int getlength() {
    return task.length;
  }

  void addTask(String text) {
    final newtask = Task(name: text);
    task.add(newtask);
    notifyListeners();
  }

  void changetask(Task tasks) {
    tasks.toggle();
    notifyListeners();
  }

  void deletetask(Task tasks) {
    task.remove(tasks);
    notifyListeners();
  }
}
