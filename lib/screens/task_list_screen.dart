// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';
// import '../providers/task_provider.dart';
// import '../providers/auth_provider.dart';
// import '../widgets/task_card.dart';

// class TaskListScreen extends StatelessWidget {
//   const TaskListScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final taskProvider = Provider.of<TaskProvider>(context);
//     final authProvider = Provider.of<AuthProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: const Text(
//             'Task Management',
//             style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.logout),
//             onPressed: () {
//               authProvider.logout();
//               context.go('/');
//             },
//           ),
//         ],
//       ),
//       body: FutureBuilder(
//         // future: taskProvider.fetchTasks(authProvider.user!.uid),
//         future: authProvider.user != null
//             ? taskProvider.fetchTasks(authProvider.user!.uid)
//             : Future.error('User is not logged in'),

//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           }
//           return ListView.builder(
//             itemCount: taskProvider.tasks.length,
//             itemBuilder: (context, index) {
//               return TaskCard(task: taskProvider.tasks[index]);
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           context.go('/tasks/new');
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';
import '../providers/auth_provider.dart';
import '../widgets/task_card.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: const Text(
            'Task Management',
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              authProvider.logout();
              context.go('/login');
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: FutureBuilder(
          future: authProvider.user != null
              ? taskProvider.fetchTasks(authProvider.user!.uid)
              : Future.error('User is not logged in'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
              itemCount: taskProvider.tasks.length,
              itemBuilder: (context, index) {
                return TaskCard(task: taskProvider.tasks[index]);
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/tasks/new');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
