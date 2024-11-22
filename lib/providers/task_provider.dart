// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_storage/firebase_storage.dart';
// // import '../models/task.dart' as custom;

// // // import '../models/task.dart';

// // class TaskProvider extends ChangeNotifier {
// //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
// //   final FirebaseStorage _storage = FirebaseStorage.instance;

// // //   List<Task> _tasks = [];
// // //   List<Task> get tasks => _tasks;

// // //   Future<void> fetchTasks(String userId) async {
// // //     final query = await _firestore
// // //         .collection('tasks')
// // //         .where('userId', isEqualTo: userId)
// // //         .orderBy('createdAt', descending: true)
// // //         .get();
// // //     _tasks = query.docs.map((doc) => Task.fromFirestore(doc)).toList();
// // //     notifyListeners();
// // //   }

// // //   Future<void> addTask(Task task, String userId) async {
// // //     final doc = _firestore.collection('tasks').doc();
// // //     await doc.set(task.toMap()..['userId'] = userId);
// // //     _tasks.add(task.copyWith(id: doc.id));
// // //     notifyListeners();
// // //   }

// // //   Future<void> updateTask(Task task) async {
// // //     await _firestore.collection('tasks').doc(task.id).update(task.toMap());
// // //     _tasks[_tasks.indexWhere((t) => t.id == task.id)] = task;
// // //     notifyListeners();
// // //   }

// // //   Future<void> deleteTask(String taskId) async {
// // //     await _firestore.collection('tasks').doc(taskId).delete();
// // //     _tasks.removeWhere((task) => task.id == taskId);
// // //     notifyListeners();
// // //   }
// // // }
// //   List<custom.Task> _tasks = [];
// //   List<custom.Task> get tasks => _tasks;

// //   Future<void> fetchTasks(String userId) async {
// //     final query = await _firestore
// //         .collection('tasks')
// //         .where('userId', isEqualTo: userId)
// //         .orderBy('createdAt', descending: true)
// //         .get();
// //     _tasks = query.docs.map((doc) => custom.Task.fromFirestore(doc)).toList();
// //     notifyListeners();
// //   }

// //   Future<void> addTask(custom.Task task, String userId) async {
// //     final doc = _firestore.collection('tasks').doc();
// //     await doc.set(task.toMap()..['userId'] = userId);
// //     _tasks.add(task.copyWith(id: doc.id));
// //     notifyListeners();
// //   }

// //   Future<void> updateTask(custom.Task task) async {
// //     await _firestore.collection('tasks').doc(task.id).update(task.toMap());
// //     _tasks[_tasks.indexWhere((t) => t.id == task.id)] = task;
// //     notifyListeners();
// //   }

// //   Future<void> deleteTask(String taskId) async {
// //     await _firestore.collection('tasks').doc(taskId).delete();
// //     _tasks.removeWhere((task) => task.id == taskId);
// //     notifyListeners();
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import '../models/task.dart';

// class TaskProvider extends ChangeNotifier {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   List<Task> _tasks = [];
//   List<Task> get tasks => _tasks;

//   // Fetch tasks for a specific user
//   Future<void> fetchTasks(String userId) async {
//     final query = await _firestore
//         .collection('tasks')
//         .where('userId', isEqualTo: userId)
//         .orderBy('createdAt', descending: true)
//         .get();

//     _tasks = query.docs.map((doc) => Task.fromSnapshot(doc)).toList();
//     notifyListeners();
//   }

//   // Add a new task
//   Future<void> addTask(Task task, String userId) async {
//     final doc = _firestore.collection('tasks').doc();

//     await doc.set({
//       ...task.toMap(),
//       'userId': userId,
//     });

//     _tasks.add(task.copyWith(
//       title: task.title,
//       description: task.description,
//       imageUrl: task.imageUrl,
//       isCompleted: task.isCompleted,
//     ));

//     notifyListeners();
//   }

//   // Update an existing task
//   Future<void> updateTask(Task task) async {
//     await _firestore.collection('tasks').doc(task.id).update(task.toMap());

//     final index = _tasks.indexWhere((t) => t.id == task.id);
//     if (index != -1) {
//       _tasks[index] = task;
//       notifyListeners();
//     }
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

  List<Task> _tasks = [];
  List<Task> get tasks => _tasks;

  // Fetch tasks from Firestore
  Future<void> fetchTasks(String userId) async {
    final snapshot = await _firestore
        .collection('tasks')
        .where('userId', isEqualTo: userId)
        .orderBy('createdAt', descending: true)
        .get();

    _tasks = snapshot.docs.map((doc) => Task.fromSnapshot(doc)).toList();
    notifyListeners();
  }

  // Add a new task
  Future<void> addTask(Task task) async {
    final docRef = _firestore.collection('tasks').doc();
    await docRef.set(task.toMap(docRef.id));
    fetchTasks(task.userId);
  }

  // Update an existing task
  Future<void> updateTask(Task task) async {
    await _firestore.collection('tasks').doc(task.id).update(task.toMap());
    final index = _tasks.indexWhere((t) => t.id == task.id);
    if (index != -1) {
      _tasks[index] = task;
      notifyListeners();
    }
  }

  // Delete a task
  Future<void> deleteTask(String taskId) async {
    await _firestore.collection('tasks').doc(taskId).delete();
    _tasks.removeWhere((task) => task.id == taskId);
    notifyListeners();
  }
}
