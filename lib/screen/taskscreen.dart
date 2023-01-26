import 'package:flutter/material.dart';
import 'package:prcatice_statemanage/screen/addtasl.dart';
import 'package:provider/provider.dart';
import '../modal/task_data.dart';
import '../widget/tasklist.dart';


class Taskscreen extends StatelessWidget {
  const Taskscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Addtask(
               
                  ));
        },
        backgroundColor: Colors.amber.shade400,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.list),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'TODO',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '${Provider.of<Taskdata>(context).getlength()} Task',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              )),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
            ),
            child: Tasklist(
              
            ),
          ))
        ],
      ),
    );
  }
}
