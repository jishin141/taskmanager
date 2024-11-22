import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskCard extends StatelessWidget {
  final Task task;

  const TaskCard({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // leading: task.imageUrl != null
        //     ? Image.network(task.imageUrl!,
        //         width: 50, height: 50, fit: BoxFit.cover)
        //     : const Icon(Icons.task),
        title: Text(task.title),
        subtitle: Text(task.description),
        trailing: Icon(
          task.isCompleted ? Icons.check_circle : Icons.circle,
          color: task.isCompleted ? Colors.green : Colors.red,
        ),
        onTap: () {
          Navigator.pushNamed(context, '/tasks/${task.id}');
        },
      ),
    );
  }
}
