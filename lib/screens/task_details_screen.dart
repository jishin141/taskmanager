import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';

class TaskDetailsScreen extends StatelessWidget {
  final String taskId;

  const TaskDetailsScreen({Key? key, required this.taskId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Call the provider method to load the task details when the screen is built
    final taskProvider = Provider.of<TaskProvider>(context);
    taskProvider.fetchTasks(taskId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Task Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () async {
              // await taskProvider.deleteTask(taskId);
              // Navigator.of(context).pop(); // Navigate back after deletion
              try {
                await taskProvider.deleteTask(taskId);
                Navigator.of(context)
                    .pop(); // Navigate back after successful deletion
              } catch (e) {
                // Handle the error
                print('An error occurred while deleting the task: $e');

                // Optionally, show a UI message to the user
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content:
                        Text('Failed to delete the task. Please try again.'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
        ],
      ),
      body: Consumer<TaskProvider>(
        builder: (context, provider, child) {
          if (provider.currentTask == null) {
            return Center(child: CircularProgressIndicator());
          }

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: provider.titleController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                  ),
                  onChanged: (value) {
                    provider.currentTask?.title = value;
                  },
                ),
                TextField(
                  controller: provider.descriptionController,
                  decoration: InputDecoration(labelText: 'Description'),
                  onChanged: (value) {
                    provider.currentTask?.description = value;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    // Update task
                    await provider.updateTask();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Task updated successfully')),
                    );
                  },
                  child: Text('Update Task'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
