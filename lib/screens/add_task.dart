import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_final_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  // TextEditingController taskTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              // controller: taskTitleController,
              onChanged: (value) {
                newTaskTitle = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                fillColor: Colors.lightBlueAccent,
                hoverColor: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
