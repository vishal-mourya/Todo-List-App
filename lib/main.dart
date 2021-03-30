import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_final_app/screens/task_screen.dart';

import 'models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
