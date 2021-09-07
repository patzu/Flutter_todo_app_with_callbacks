import 'package:flutter/material.dart';
import 'package:todoapp/screens/task_model.dart';
import 'package:todoapp/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  TasksList({required this.taskModelList});

  final List<TaskModel> taskModelList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: taskModelList.length,
      itemBuilder: (context, index) {
        return TaskTile(taskModelList[index]);
      },
    );
  }
}
