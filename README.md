# Task Management Application

A Flutter-based task management application integrated with Firebase. This app includes features like user authentication, CRUD operations for tasks, animations, persistent login, and seamless navigation using GoRouter.

---

## Features

### 1. User Authentication
- Sign-Up and Login functionality using **Firebase Authentication**.



- Task fields:
  - **Task Title**
  - **Task Description**
  - **Task Image** (optional)
  - **Task Status**
  - **Created Timestamp**
- Features:
  - Add new tasks with an option to upload images (via camera or gallery).
  - Store images in Firebase Storage and save their download URL in Firestore.
  - Edit existing tasks, including updating images.
  - Delete tasks.
  - Mark tasks as completed/incomplete.

### . State Management
- **Provider** (or Bloc) for efficient state management.
- Real-time updates for:
  - Task list changes (add, update, delete).
  - User authentication state.

### . Navigation
- **GoRouter** for modern navigation, including:
  - Login Page
  - Sign-Up Page
  - Task List Page
  - Task Details Page (view/edit specific tasks)



### . Real-time Updates
- Task list updates dynamically as tasks are added, edited, or deleted.

###  User-Specific Data
- Tasks are filtered based on the authenticated user (using Firebase Authentication UID).

---

## Optional Features (Bonus)
- **Responsive Design**: Optimized for both mobile and tablet views.
- **Dark Mode Support**: Includes light and dark themes.
- **Push Notifications**: Notifications for new tasks using Firebase Cloud Messaging (FCM).

---

## Technical Stack

- **Flutter**: Framework for building the app.
- **Firebase Authentication**: For user login and signup.
- **Firebase Firestore**: For storing task data.
- **Firebase Storage**: For storing uploaded task images.
- **Provider** (or Bloc): For state management.
- **GoRouter**: For seamless navigation.
- **image_picker**: For selecting images from the camera or gallery.

---

