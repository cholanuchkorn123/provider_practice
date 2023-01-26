import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../modal/task_data.dart';
import '../widget/tasktile.dart';

class Tasklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, value, child) {
        return ListView.builder(
            itemCount: value.getlength(),
            itemBuilder: ((context, index) {
              final indexvalue = value.task[index];
              return Tasktile(
                  text: indexvalue.name,
                  ischeck: indexvalue.isdone,
                  ischecker: (checkstate) {
                    value.changetask(indexvalue);
                  },
                  longpress: () {
                    value.deletetask(indexvalue);
                  });
            }));
      },
    );
  }
}
