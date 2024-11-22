// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../providers/task_provider.dart';

// class TaskDetailsScreen extends StatelessWidget {
//   final String taskId;

//   const TaskDetailsScreen({Key? key, required this.taskId}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final taskProvider = Provider.of<TaskProvider>(context);
//     final task = taskProvider.tasks.firstWhere((task) => task.id == taskId);

//     final titleController = TextEditingController(text: task.title);
//     final descriptionController = TextEditingController(text: task.description);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Task Details'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.delete),
//             onPressed: () {
//               taskProvider.deleteTask(taskId);
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//                 controller: titleController,
//                 decoration: const InputDecoration(labelText: 'Title')),
//             TextField(
//                 controller: descriptionController,
//                 decoration: const InputDecoration(labelText: 'Description')),
//             CheckboxListTile(
//               value: task.isCompleted,
//               title: const Text('Completed'),
//               onChanged: (value) {
//                 taskProvider.updateTask(task.copyWith(isCompleted: value!));
//               },
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 taskProvider.updateTask(task.copyWith(
//                   title: titleController.text,
//                   description: descriptionController.text,
//                 ));
//                 Navigator.pop(context);
//               },
//               child: const Text('Save Changes'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/task_provider.dart';

class TaskDetailsScreen extends StatelessWidget {
  final String taskId;

  const TaskDetailsScreen({Key? key, required this.taskId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    final task = taskProvider.tasks.firstWhere((task) => task.id == taskId);

    final titleController = TextEditingController(text: task.title);
    final descriptionController = TextEditingController(text: task.description);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Task Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              taskProvider.deleteTask(taskId);
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 16),
              CheckboxListTile(
                value: task.isCompleted,
                title: const Text(
                  'Completed',
                  style: TextStyle(color: Colors.white),
                ),
                onChanged: (value) {
                  taskProvider.updateTask(task.copyWith(isCompleted: value!));
                },
                activeColor: Colors.white,
                checkColor: Colors.black,
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    taskProvider.updateTask(task.copyWith(
                      title: titleController.text,
                      description: descriptionController.text,
                    ));
                    Navigator.pop(context);
                  },
                  child: const Text('Save Changes'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
