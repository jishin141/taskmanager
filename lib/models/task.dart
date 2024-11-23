import 'package:cloud_firestore/cloud_firestore.dart';

class Task {
  final String id;
  final String userId;
  String title;
  String description;
  final bool isCompleted;
  final Timestamp createdAt;

  Task({
    required this.id, // Include id as a required parameter
    required this.userId,
    required this.title,
    required this.description,
    required this.isCompleted,
    required this.createdAt,
  });

  // Copy with method to create a new instance with updated values
  Task copyWith({
    String? id,
    String? title,
    String? description,
    bool? isCompleted,
  }) {
    return Task(
      id: id ?? this.id, // Ensure id is included in copyWith
      userId: this.userId,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
      createdAt: this.createdAt,
    );
  }

  // Factory constructor to create a Task from a Firestore snapshot
  factory Task.fromSnapshot(DocumentSnapshot snapshot) {
    return Task(
      id: snapshot.id, // Firestore document ID
      userId: snapshot['userId'],
      title: snapshot['title'],
      description: snapshot['description'],
      isCompleted: snapshot['isCompleted'] ?? false,
      createdAt: snapshot['createdAt'],
    );
  }

  // Convert Task to a Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'createdAt': createdAt,
    };
  }
}
