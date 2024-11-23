import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'providers/auth_provider.dart';
import 'providers/task_provider.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/splashscreen.dart';
import 'screens/task_list_screen.dart';
import 'screens/task_details_screen.dart';
import 'screens/taskformscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: 'AIzaSyDkeR8kQH8Z939PnZO4YqpIVF-xDbLgjjQ',
    appId: '1:622823363906:android:14ace93c3910efb37064db',
    messagingSenderId: '622823363906',
    projectId: 'taskmanagement-30e1a',
    storageBucket: 'taskmanagement-30e1a.firebasestorage.app',
  ));
  FirebaseFirestore.instance.settings =
      const Settings(persistenceEnabled: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => TaskProvider()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Task Manager',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        routerConfig: _router,
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/signup', builder: (context, state) => const SignUpScreen()),
    // GoRoute(
    //   path: '/tasks',
    //   builder: (context, state) => const TaskListScreen(),
    // ),
    GoRoute(
      path: '/tasks',
      builder: (context, state) {
        final userId = 'some_user_id'; // Get the current user ID
        return TaskListScreen(userId: userId); // Pass userId to TaskListScreen
      },
    ),
    GoRoute(
      path: '/tasks/:id',
      builder: (context, state) =>
          TaskDetailsScreen(taskId: state.pathParameters['id']!),
    ),
    GoRoute(
      path: '/add-task',
      builder: (context, state) {
        final userId = Provider.of<AuthProvider>(context, listen: false).userId;
        if (userId == null) {
          // Redirect to login if userId is null
          return const LoginScreen();
        }
        return AddTaskPage(userId: userId);
      },
    ),
  ],
);
