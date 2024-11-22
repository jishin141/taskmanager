// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../models/task.dart';
// import '../providers/task_provider.dart';

// class TaskFormScreen extends StatefulWidget {
//   final Task? task;

//   const TaskFormScreen({Key? key, this.task}) : super(key: key);

//   @override
//   _TaskFormScreenState createState() => _TaskFormScreenState();
// }

// class _TaskFormScreenState extends State<TaskFormScreen> {
//   final _formKey = GlobalKey<FormState>();
//   late TextEditingController _titleController;
//   late TextEditingController _descriptionController;

//   @override
//   void initState() {
//     super.initState();
//     _titleController = TextEditingController(text: widget.task?.title ?? '');
//     _descriptionController =
//         TextEditingController(text: widget.task?.description ?? '');
//   }

//   @override
//   void dispose() {
//     _titleController.dispose();
//     _descriptionController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final taskProvider = Provider.of<TaskProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.task == null ? 'Add Task' : 'Edit Task'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _titleController,
//                 decoration: const InputDecoration(labelText: 'Title'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a title';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _descriptionController,
//                 decoration: const InputDecoration(labelText: 'Description'),
//                 maxLines: 3,
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     final task = Task(
//                       id: widget.task?.id ?? DateTime.now().toString(),
//                       title: _titleController.text,
//                       description: _descriptionController.text,
//                       isCompleted: widget.task?.isCompleted ?? false,
//                       createdAt: widget.task?.createdAt ?? DateTime.now(),
//                       userId: 'currentUserId', // Replace with actual user ID
//                       // imageUrl: widget.task?.imageUrl,
//                     );

//                     if (widget.task == null) {
//                       taskProvider.addTask(task);
//                     } else {
//                       taskProvider.updateTask(task);
//                     }

//                     Navigator.pop(context);
//                   }
//                 },
//                 child: Text(widget.task == null ? 'Add Task' : 'Save Changes'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
