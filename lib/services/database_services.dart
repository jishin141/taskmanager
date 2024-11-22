

// import 'package:cloud_firestore/cloud_firestore.dart';
// import '../models/task.dart';

// const String TASK_REF = "tasks";

// class DatabaseService {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   late final CollectionReference _taskRef;

//   DatabaseService() {
//     _taskRef = _firestore.collection(TASK_REF);
//   }

//   // Fetch all tasks
//   Future<List<Task>> getAllTasks() async {
//     final querySnapshot = await _taskRef.get();
//     return querySnapshot.docs.map((doc) => Task.fromSnapshot(doc)).toList();
//   }

//   // Add a new task
//   Future<void> addTask(Task task) async {
//     await _taskRef.add(task.toMap());
//   }

//   // Delete a task by ID
//   Future<void> deleteTask(String id) async {
//     await _taskRef.doc(id).delete();
//   }

//   // Update an existing task by ID
//   Future<void> updateTask(String id, Task updatedTask) async {
//     await _taskRef.doc(id).update(updatedTask.toMap());
//   }

//   // Fetch tasks by user ID
//   Future<List<Task>> getTasksByUserId(String userId) async {
//     final querySnapshot =
//         await _taskRef.where('userId', isEqualTo: userId).get();
//     return querySnapshot.docs.map((doc) => Task.fromSnapshot(doc)).toList();
//   }

//   // Toggle task completion status
//   Future<void> toggleTaskCompletion(String id, bool isCompleted) async {
//     await _taskRef.doc(id).update({'isCompleted': isCompleted});
//   }
// }
