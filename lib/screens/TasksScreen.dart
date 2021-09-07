import 'package:flutter/material.dart';
import 'package:todoapp/screens/task_model.dart';
import 'package:todoapp/widgets/task_lists.dart';

import 'add_task_bottom_sheet.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<TaskModel> taskModelList = [];

  @override
  Widget build(BuildContext context) {
    bool? _checked = false;

    return Scaffold(
      backgroundColor: Color(0xff5DC4FF),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 60, top: 30, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  CircleAvatar(
                    child: Icon(Icons.list, size: 50, color: Color(0xff5DC4FF)),
                    backgroundColor: Colors.white,
                    radius: 40,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '12 Tasks',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: TasksList(taskModelList: taskModelList),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) => AddTaskBottomSheet(onPressed: addTaskModelToList),
          );
        },
        child: Icon(Icons.add, size: 30),
      ),
    );
  }

  addTaskModelToList(TaskModel taskModel) {
    taskModelList.add(taskModel);
    setState(() {});
    Navigator.pop(context);
  }
}
