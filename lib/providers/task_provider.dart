// // // // import 'package:flutter/material.dart';
// // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // import 'package:firebase_storage/firebase_storage.dart';
// // // // import '../models/task.dart' as custom;

// // // // // import '../models/task.dart';

// // // // class TaskProvider extends ChangeNotifier {
// // // //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
// // // //   final FirebaseStorage _storage = FirebaseStorage.instance;

// // // // //   List<Task> _tasks = [];
// // // // //   List<Task> get tasks => _tasks;

// // // // //   Future<void> fetchTasks(String userId) async {
// // // // //     final query = await _firestore
// // // // //         .collection('tasks')
// // // // //         .where('userId', isEqualTo: userId)
// // // // //         .orderBy('createdAt', descending: true)
// // // // //         .get();
// // // // //     _tasks = query.docs.map((doc) => Task.fromFirestore(doc)).toList();
// // // // //     notifyListeners();
// // // // //   }

// // // // //   Future<void> addTask(Task task, String userId) async {
// // // // //     final doc = _firestore.collection('tasks').doc();
// // // // //     await doc.set(task.toMap()..['userId'] = userId);
// // // // //     _tasks.add(task.copyWith(id: doc.id));
// // // // //     notifyListeners();
// // // // //   }

// // // // //   Future<void> updateTask(Task task) async {
// // // // //     await _firestore.collection('tasks').doc(task.id).update(task.toMap());
// // // // //     _tasks[_tasks.indexWhere((t) => t.id == task.id)] = task;
// // // // //     notifyListeners();
// // // // //   }

// // // // //   Future<void> deleteTask(String taskId) async {
// // // // //     await _firestore.collection('tasks').doc(taskId).delete();
// // // // //     _tasks.removeWhere((task) => task.id == taskId);
// // // // //     notifyListeners();
// // // // //   }
// // // // // }
// // // //   List<custom.Task> _tasks = [];
// // // //   List<custom.Task> get tasks => _tasks;

// // // //   Future<void> fetchTasks(String userId) async {
// // // //     final query = await _firestore
// // // //         .collection('tasks')
// // // //         .where('userId', isEqualTo: userId)
// // // //         .orderBy('createdAt', descending: true)
// // // //         .get();
// // // //     _tasks = query.docs.map((doc) => custom.Task.fromFirestore(doc)).toList();
// // // //     notifyListeners();
// // // //   }

// // // //   Future<void> addTask(custom.Task task, String userId) async {
// // // //     final doc = _firestore.collection('tasks').doc();
// // // //     await doc.set(task.toMap()..['userId'] = userId);
// // // //     _tasks.add(task.copyWith(id: doc.id));
// // // //     notifyListeners();
// // // //   }

// // // //   Future<void> updateTask(custom.Task task) async {
// // // //     await _firestore.collection('tasks').doc(task.id).update(task.toMap());
// // // //     _tasks[_tasks.indexWhere((t) => t.id == task.id)] = task;
// // // //     notifyListeners();
// // // //   }

// // // //   Future<void> deleteTask(String taskId) async {
// // // //     await _firestore.collection('tasks').doc(taskId).delete();
// // // //     _tasks.removeWhere((task) => task.id == taskId);
// // // //     notifyListeners();
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import '../models/task.dart';

// // // class TaskProvider extends ChangeNotifier {
// // //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// // //   List<Task> _tasks = [];
// // //   List<Task> get tasks => _tasks;

// // //   // Fetch tasks for a specific user
// // //   Future<void> fetchTasks(String userId) async {
// // //     final query = await _firestore
// // //         .collection('tasks')
// // //         .where('userId', isEqualTo: userId)
// // //         .orderBy('createdAt', descending: true)
// // //         .get();

// // //     _tasks = query.docs.map((doc) => Task.fromSnapshot(doc)).toList();
// // //     notifyListeners();
// // //   }

// // //   // Add a new task
// // //   Future<void> addTask(Task task, String userId) async {
// // //     final doc = _firestore.collection('tasks').doc();

// // //     await doc.set({
// // //       ...task.toMap(),
// // //       'userId': userId,
// // //     });

// // //     _tasks.add(task.copyWith(
// // //       title: task.title,
// // //       description: task.description,
// // //       imageUrl: task.imageUrl,
// // //       isCompleted: task.isCompleted,
// // //     ));

// // //     notifyListeners();
// // //   }

// // //   // Update an existing task
// // //   Future<void> updateTask(Task task) async {
// // //     await _firestore.collection('tasks').doc(task.id).update(task.toMap());

// // //     final index = _tasks.indexWhere((t) => t.id == task.id);
// // //     if (index != -1) {
// // //       _tasks[index] = task;
// // //       notifyListeners();
// // //     }
// // //   }

// // //   // Delete a task
// // //   Future<void> deleteTask(String taskId) async {
// // //     await _firestore.collection('tasks').doc(taskId).delete();

// // //     _tasks.removeWhere((task) => task.id == taskId);
// // //     notifyListeners();
// // //   }
// // // }

// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter/material.dart';
// // import '../models/task.dart';

// // class TaskProvider with ChangeNotifier {
// //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// //   List<Task> _tasks = [];
// //   List<Task> get tasks => _tasks;

// //   // Fetch tasks from Firestore
// //   Future<void> fetchTasks(String userId) async {
// //     final snapshot = await _firestore
// //         .collection('tasks')
// //         .where('userId', isEqualTo: userId)
// //         .orderBy('createdAt', descending: true)
// //         .get();

// //     _tasks = snapshot.docs.map((doc) => Task.fromSnapshot(doc)).toList();
// //     notifyListeners();
// //   }

// //   // Add a new task
// //   Future<void> addTask(Task task) async {
// //     final docRef = _firestore.collection('tasks').doc();
// //     await docRef.set(task.toMap(docRef.id));
// //     fetchTasks(task.userId);
// //   }

// //   // Update an existing task
// //   Future<void> updateTask(Task task) async {
// //     await _firestore.collection('tasks').doc(task.id).update(task.toMap());
// //     final index = _tasks.indexWhere((t) => t.id == task.id);
// //     if (index != -1) {
// //       _tasks[index] = task;
// //       notifyListeners();
// //     }
// //   }

// //   // Delete a task
// //   Future<void> deleteTask(String taskId) async {
// //     await _firestore.collection('tasks').doc(taskId).delete();
// //     _tasks.removeWhere((task) => task.id == taskId);
// //     notifyListeners();
// //   }
// // }

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import '../models/task.dart';

// // class TaskProvider with ChangeNotifier {
// //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// //   List<Task> _tasks = [];
// //   List<Task> get tasks => _tasks;

// //   // For handling a single task's details
// //   Task? _currentTask;
// //   Task? get currentTask => _currentTask;

// //   // TextEditingControllers for task details
// //   TextEditingController titleController = TextEditingController();
// //   TextEditingController descriptionController = TextEditingController();

// //   // Fetch tasks from Firestore
// //   Future<void> fetchTasks(String userId) async {
// //     final snapshot = await _firestore
// //         .collection('tasks')
// //         .where('userId', isEqualTo: userId)
// //         .orderBy('createdAt', descending: true)
// //         .get();

// //     _tasks = snapshot.docs.map((doc) => Task.fromSnapshot(doc)).toList();
// //     notifyListeners();
// //   }

// //   // Load a specific task for editing
// //   void loadTaskDetails(String taskId) {
// //     _currentTask = _tasks.firstWhere((task) => task.id == taskId);
// //     titleController.text = _currentTask?.title ?? '';
// //     descriptionController.text = _currentTask?.description ?? '';
// //     notifyListeners();
// //   }

// //   // Add a new task
// //   Future<void> addTask(Task task) async {
// //     final docRef = _firestore.collection('tasks').doc();
// //     await docRef.set(task.toMap());
// //     fetchTasks(task.userId);
// //   }

// //   // Update an existing task
// //   // Future<void> updateTask() async {
// //   //   if (_currentTask == null) return;

// //   //   final updatedTask = _currentTask!.copyWith(
// //   //     title: titleController.text,
// //   //     description: descriptionController.text,
// //   //   );
// //   //   await _firestore
// //   //       .collection('tasks')
// //   //       .doc(updatedTask.id)
// //   //       .update(updatedTask.toMap());

// //   //   // Update locally
// //   //   _currentTask = updatedTask;
// //   //   final index = _tasks.indexWhere((t) => t.id == updatedTask.id);
// //   //   if (index != -1) {
// //   //     _tasks[index] = updatedTask;
// //   //   }

// //   //   notifyListeners();
// //   // }
// //   Future<void> updateTask() async {
// //     if (_currentTask == null) return;

// //     // Create a new Task instance with updated values using copyWith
// //     final updatedTask = _currentTask!.copyWith(
// //       title: titleController.text,
// //       description: descriptionController.text,
// //     );

// //     // Update task in Firestore
// //     await _firestore
// //         .collection('tasks')
// //         .doc(updatedTask.id)
// //         .update(updatedTask.toMap());

// //     // Update locally
// //     _currentTask = updatedTask;
// //     final index = _tasks.indexWhere((t) => t.id == updatedTask.id);
// //     if (index != -1) {
// //       _tasks[index] = updatedTask;
// //     }

// //     notifyListeners();
// //   }

// //   // Delete a task
// //   Future<void> deleteTask(String taskId) async {
// //     await _firestore.collection('tasks').doc(taskId).delete();
// //     _tasks.removeWhere((task) => task.id == taskId);
// //     notifyListeners();
// //   }
// // }
// class TaskProvider with ChangeNotifier {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   List<Task> _tasks = [];
//   Task? _currentTask;
//   Task? get currentTask => _currentTask;

//   TextEditingController titleController = TextEditingController();
//   TextEditingController descriptionController = TextEditingController();

//   // Fetch task details from Firestore
//   Future<void> fetchTasks(String taskId) async {
//     final docSnapshot = await _firestore.collection('tasks').doc(taskId).get();
//     if (docSnapshot.exists) {
//       _currentTask = Task.fromSnapshot(docSnapshot);
//       titleController.text = _currentTask!.title;
//       descriptionController.text = _currentTask!.description;
//       notifyListeners();
//     }
//   }

//   // Update task with new values
//   Future<void> updateTask() async {
//     if (_currentTask == null) return;

//     final updatedTask = _currentTask!.copyWith(
//       title: titleController.text,
//       description: descriptionController.text,
//     );

//     // Update the task in Firestore
//     await _firestore
//         .collection('tasks')
//         .doc(updatedTask.id)
//         .update(updatedTask.toMap());

//     // Update the current task locally
//     _currentTask = updatedTask;
//     notifyListeners();
//   }

//   // Delete a task
//   Future<void> deleteTask(String taskId) async {
//     await _firestore.collection('tasks').doc(taskId).delete();
//     _tasks.removeWhere((task) => task.id == taskId);
//     notifyListeners();
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskProvider with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Private list of tasks that will be accessible to the UI
  List<Task> _tasks = [];

  // Getter for tasks list
  List<Task> get tasks => _tasks;

  // The current task being viewed/edited
  Task? _currentTask;
  Task? get currentTask => _currentTask;

  // Controllers for managing task input
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  // Fetch tasks from Firestore
  Future<void> fetchTasks(String userId) async {
    final snapshot = await _firestore
        .collection('tasks')
        .where('userId', isEqualTo: userId)
        .orderBy('createdAt', descending: true)
        .get();

    // Convert the Firestore snapshot to a list of Task objects
    _tasks = snapshot.docs.map((doc) => Task.fromSnapshot(doc)).toList();
    notifyListeners(); // Notify listeners to update the UI
  }

  // Load a specific task's details (for editing purposes)
  Future<void> loadTaskDetails(String taskId) async {
    final docSnapshot = await _firestore.collection('tasks').doc(taskId).get();
    if (docSnapshot.exists) {
      _currentTask = Task.fromSnapshot(docSnapshot);
      // Set the controllers with the task data
      titleController.text = _currentTask!.title;
      descriptionController.text = _currentTask!.description;
      notifyListeners(); // Notify listeners to update the UI
    }
  }

  // Add a new task to Firestore
  Future<void> addTask(Task task) async {
    final docRef = _firestore.collection('tasks').doc();
    await docRef.set(task.toMap()); // Add the task to Firestore
    fetchTasks(task.userId); // Refresh the task list
  }

  // Update an existing task
  Future<void> updateTask() async {
    if (_currentTask == null) return;

    // Create an updated task instance using the copyWith method
    final updatedTask = _currentTask!.copyWith(
      title: titleController.text,
      description: descriptionController.text,
    );

    // Update the task in Firestore
    await _firestore
        .collection('tasks')
        .doc(updatedTask.id)
        .update(updatedTask.toMap());

    // Update the local list of tasks
    _currentTask = updatedTask;
    // Find the index of the updated task and update it
    final index = _tasks.indexWhere((task) => task.id == updatedTask.id);
    if (index != -1) {
      _tasks[index] = updatedTask;
    }
    notifyListeners(); // Notify listeners to update the UI
  }

  // Mark a task as completed or not completed
  Future<void> toggleTaskCompletion(String taskId) async {
    final taskIndex = _tasks.indexWhere((task) => task.id == taskId);
    if (taskIndex != -1) {
      final task = _tasks[taskIndex];
      final updatedTask = task.copyWith(
        isCompleted: !task.isCompleted,
      );

      // Update the task in Firestore
      await _firestore
          .collection('tasks')
          .doc(task.id)
          .update(updatedTask.toMap());

      // Update the task locally
      _tasks[taskIndex] = updatedTask;
      notifyListeners(); // Notify listeners to update the UI
    }
  }

  // Delete a task from Firestore
  Future<void> deleteTask(String taskId) async {
    await _firestore.collection('tasks').doc(taskId).delete();
    _tasks.removeWhere((task) => task.id == taskId);
    notifyListeners(); // Notify listeners to update the UI
  }
}
