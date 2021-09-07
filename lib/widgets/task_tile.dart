import 'package:flutter/material.dart';
import 'package:todoapp/screens/task_model.dart';

class TaskTile extends StatefulWidget {
  final TaskModel taskModel;

  TaskTile(this.taskModel);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? _checked;

  @override
  void initState() {
    _checked = widget.taskModel.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.taskModel.title, style: TextStyle(fontSize: 18)),
      trailing: Checkbox(
        onChanged: (value) {
          setState(() {
            _checked = value;
          });
        },
        value: _checked,
      ),
    );
  }
}
