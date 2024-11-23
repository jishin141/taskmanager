Task Management Application

A Flutter-based Task Management Application leveraging Firebase to help users efficiently organize and manage tasks. This project demonstrates the implementation of user authentication, state management, real-time updates, and modern navigation using GoRouter. The application is designed with scalability, responsiveness, and an enhanced user experience in mind. Features

User Authentication Firebase Authentication ensures secure login and signup using email and password.

Task Management A robust task management system where users can organize and keep track of their tasks effectively: Task Title: Serves as the main identifier for a task and is prominently displayed. Task Description: A concise overview that provides additional details about the task. Task Status: Users can mark tasks as Pending or Completed, indicated visually with labels/icons. Created Timestamp: Automatically generated to provide context on when the task was created.

Comprehensive CRUD Operations: Create: Users can add new tasks by filling out a form with a title, description, and an optional image. Read: The task list screen displays all tasks in an email-style layout, making it easy to scan through. Update: Users can edit tasks, including updating their details and replacing images. Delete: Tasks can be permanently removed from the list.

State Management State management is handled using Provider, a popular package in Flutter that allows for efficient, scalable, and organized state handling. The authentication state is managed so that: The app dynamically reflects login/logout state changes. User sessions are maintained or invalidated seamlessly. Real-time task updates ensure that changes (e.g., adding, editing, or deleting a task) are immediately reflected on the task list screen without requiring manual refresh.

5.Navigation The app uses GoRouter, a modern navigation solution in Flutter, to provide a declarative and easy-to-manage navigation structure. Screens are designed to flow intuitively: Login Screen: For user login. Sign-Up Screen: For creating a new account. Task List Screen: Displays the user’s tasks in an organized manner. Task Details Screen: Allows users to view and edit the details of a selected task. Navigation Features: Proper navigation guards ensure that unauthorized users cannot access protected screens. Smooth screen transitions enhance the user experience.

Real-Time Updates Tasks are updated in real-time using Firebase Firestore's live database capabilities: When tasks are added, edited, or deleted, the changes are instantly reflected in the task list. This feature eliminates the need for manual refresh or reloading of data, providing a seamless experience.

User-Specific Data User data is securely isolated by associating tasks with the unique Firebase Authentication UID of the logged-in user.

Login Screen: Captures the authentication interface. Task List: Displays tasks with their title, description, and status. Task Details: Provides the editing and viewing interface for individual tasks.

Installation Guide Prerequisites Install the Flutter SDK (Installation Guide). Set up a Firebase project in your Google account. Enable Firebase Authentication, Firestore, and Storage in the Firebase console.
