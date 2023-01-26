import 'package:flutter/material.dart';
import 'package:prcatice_statemanage/modal/task.dart';
import 'package:prcatice_statemanage/modal/task_data.dart';
import 'package:provider/provider.dart';

class Addtask extends StatelessWidget {
  String? textsend;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        padding: EdgeInsets.all(30),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.pink.shade300,
                fontWeight: FontWeight.w600,
                fontSize: 30),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              textsend = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.pink.shade300,
            child: TextButton(
              onPressed: () {
                Provider.of<Taskdata>(context,listen: false).addTask(textsend!);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
