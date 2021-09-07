import 'package:flutter/material.dart';

import 'task_model.dart';

class AddTaskBottomSheet extends StatelessWidget {
  AddTaskBottomSheet({Key? key, required this.onPressed}) : super(key: key);

  final Function(TaskModel) onPressed;
  late final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    TextEditingController taskController = TextEditingController();

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 8),
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff5DC4FF),
                fontWeight: FontWeight.w700,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              controller: taskController,
            ),
            ElevatedButton(
              onPressed: () => onPressed(
                TaskModel(
                  title: taskController.text,
                  isChecked: false,
                ),

              ),
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
