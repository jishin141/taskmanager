// // // // import 'package:flutter/material.dart';
// // // // import 'package:go_router/go_router.dart';
// // // // import 'package:provider/provider.dart';
// // // // import '../providers/auth_provider.dart';

// // // // class LoginScreen extends StatelessWidget {
// // // //   const LoginScreen({Key? key}) : super(key: key);

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final auth = Provider.of<AuthProvider>(context);

// // // //     final emailController = TextEditingController();
// // // //     final passwordController = TextEditingController();

// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //           title: Center(
// // // //         child: const Text(
// // // //           'Login',
// // // //           style: TextStyle(fontSize: 38),
// // // //         ),
// // // //       )),
// // // //       body: Padding(
// // // //         padding: const EdgeInsets.only(top: 380.0),
// // // //         child: Padding(
// // // //           padding: const EdgeInsets.all(18.0),
// // // //           child: Container(
// // // //             height: 290,
// // // //             decoration:
// // // //                 BoxDecoration(color: Color.fromRGBO(139, 137, 137, 0.515)),
// // // //             child: Column(
// // // //               children: [
// // // //                 Padding(
// // // //                   padding: const EdgeInsets.all(8.0),
// // // //                   child: TextField(
// // // //                       controller: emailController,
// // // //                       decoration: const InputDecoration(labelText: 'Email')),
// // // //                 ),
// // // //                 Padding(
// // // //                   padding: const EdgeInsets.all(8.0),
// // // //                   child: TextField(
// // // //                       controller: passwordController,
// // // //                       decoration: const InputDecoration(labelText: 'Password'),
// // // //                       obscureText: true),
// // // //                 ),
// // // //                 ElevatedButton(
// // // //                   onPressed: () async {
// // // //                     await auth.login(
// // // //                         emailController.text, passwordController.text);
// // // //                     if (auth.user != null) {
// // // //                       context.go('/tasks');
// // // //                     }
// // // //                   },
// // // //                   child: const Text('Login'),
// // // //                 ),
// // // //                 TextButton(
// // // //                   onPressed: () => context.go('/signup'),
// // // //                   child: const Text('Sign Up'),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';
// // // import 'package:go_router/go_router.dart';
// // // import 'package:provider/provider.dart';
// // // import '../providers/auth_provider.dart';
// // // import 'package:google_fonts/google_fonts.dart';

// // // class LoginScreen extends StatelessWidget {
// // //   const LoginScreen({Key? key}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final auth = Provider.of<AuthProvider>(context);

// // //     final emailController = TextEditingController();
// // //     final passwordController = TextEditingController();

// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         backgroundColor: Colors.teal,
// // //         title: Padding(
// // //           padding: const EdgeInsets.only(
// // //             bottom: 24.0,
// // //           ),
// // //           child: Text(
// // //             'Login',
// // //             style: GoogleFonts.pacifico(
// // //                 fontSize: 34,
// // //                 fontWeight: FontWeight.bold,
// // //                 color: Color.fromARGB(255, 255, 255, 255)),
// // //           ),
// // //         ),
// // //         centerTitle: true,
// // //         elevation: 1,
// // //       ),
// // //       body: Stack(
// // //         children: [
// // //           // Gradient background
// // //           Container(
// // //             decoration: const BoxDecoration(
// // //               gradient: LinearGradient(
// // //                 colors: [Colors.teal, Colors.green],
// // //                 begin: Alignment.topCenter,
// // //                 end: Alignment.bottomCenter,
// // //               ),
// // //             ),
// // //           ),
// // //           Center(
// // //             child: SingleChildScrollView(
// // //               child: Padding(
// // //                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
// // //                 child: Card(
// // //                   color: Color.fromARGB(255, 236, 255, 237),
// // //                   elevation: 8,
// // //                   shape: RoundedRectangleBorder(
// // //                       borderRadius: BorderRadius.circular(15)),
// // //                   child: Padding(
// // //                     padding: const EdgeInsets.all(20.0),
// // //                     child: Column(
// // //                       mainAxisSize: MainAxisSize.min,
// // //                       children: [
// // //                         Text(
// // //                           'Welcome Back!',
// // //                           style: GoogleFonts.pacifico(
// // //                             fontSize: 28,
// // //                             fontWeight: FontWeight.bold,
// // //                             color: Colors.teal,
// // //                           ),
// // //                         ),
// // //                         const SizedBox(height: 10),
// // //                         const Text(
// // //                           'Login to continue',
// // //                           style: TextStyle(
// // //                             fontSize: 16,
// // //                             color: Colors.grey,
// // //                           ),
// // //                         ),
// // //                         const SizedBox(height: 30),
// // //                         TextField(
// // //                           controller: emailController,
// // //                           decoration: InputDecoration(
// // //                             labelText: 'Email',
// // //                             prefixIcon: const Icon(Icons.email),
// // //                             border: OutlineInputBorder(
// // //                               borderRadius: BorderRadius.circular(10),
// // //                             ),
// // //                           ),
// // //                         ),
// // //                         const SizedBox(height: 20),
// // //                         TextField(
// // //                           controller: passwordController,
// // //                           obscureText: true,
// // //                           decoration: InputDecoration(
// // //                             labelText: 'Password',
// // //                             prefixIcon: const Icon(Icons.lock),
// // //                             border: OutlineInputBorder(
// // //                               borderRadius: BorderRadius.circular(10),
// // //                             ),
// // //                           ),
// // //                         ),
// // //                         const SizedBox(height: 30),
// // //                         ElevatedButton(
// // //                           style: ElevatedButton.styleFrom(
// // //                             padding: const EdgeInsets.symmetric(
// // //                                 horizontal: 50, vertical: 15),
// // //                             shape: RoundedRectangleBorder(
// // //                               borderRadius: BorderRadius.circular(10),
// // //                             ),
// // //                             backgroundColor: Colors.teal,
// // //                           ),
// // //                           onPressed: () async {
// // //                             await auth.login(
// // //                                 emailController.text, passwordController.text);
// // //                             if (auth.user != null) {
// // //                               context.go('/tasks');
// // //                             }
// // //                           },
// // //                           child: const Text(
// // //                             'Login',
// // //                             style: TextStyle(
// // //                                 fontSize: 18,
// // //                                 color: Color.fromARGB(255, 255, 255, 255)),
// // //                           ),
// // //                         ),
// // //                         const SizedBox(height: 20),
// // //                         TextButton(
// // //                           onPressed: () => context.go('/signup'),
// // //                           child: const Text(
// // //                             'Don\'t have an account? Sign Up',
// // //                             style: TextStyle(
// // //                               color: Colors.teal,
// // //                               fontSize: 16,
// // //                               fontWeight: FontWeight.w600,
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';
// // import 'package:provider/provider.dart';
// // import '../providers/auth_provider.dart';
// // import 'package:google_fonts/google_fonts.dart';

// // class LoginScreen extends StatelessWidget {
// //   const LoginScreen({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     final auth = Provider.of<AuthProvider>(context);

// //     final emailController = TextEditingController();
// //     final passwordController = TextEditingController();

// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.teal,
// //         title: Padding(
// //           padding: const EdgeInsets.only(
// //             bottom: 24.0,
// //           ),
// //           child: Text(
// //             'Login',
// //             style: GoogleFonts.pacifico(
// //                 fontSize: 34,
// //                 fontWeight: FontWeight.bold,
// //                 color: Color.fromARGB(255, 255, 255, 255)),
// //           ),
// //         ),
// //         centerTitle: true,
// //         elevation: 1,
// //       ),
// //       body: Stack(
// //         children: [
// //           // Gradient background
// //           Container(
// //             decoration: const BoxDecoration(
// //               gradient: LinearGradient(
// //                 colors: [Colors.teal, Colors.green],
// //                 begin: Alignment.topCenter,
// //                 end: Alignment.bottomCenter,
// //               ),
// //             ),
// //           ),
// //           Center(
// //             child: SingleChildScrollView(
// //               child: Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
// //                 child: Card(
// //                   color: Color.fromARGB(255, 236, 255, 237),
// //                   elevation: 8,
// //                   shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(15)),
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(20.0),
// //                     child: Column(
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         Text(
// //                           'Welcome Back!',
// //                           style: GoogleFonts.pacifico(
// //                             fontSize: 28,
// //                             fontWeight: FontWeight.bold,
// //                             color: Colors.teal,
// //                           ),
// //                         ),
// //                         const SizedBox(height: 10),
// //                         const Text(
// //                           'Login to continue',
// //                           style: TextStyle(
// //                             fontSize: 16,
// //                             color: Colors.grey,
// //                           ),
// //                         ),
// //                         const SizedBox(height: 30),
// //                         TextField(
// //                           controller: emailController,
// //                           decoration: InputDecoration(
// //                             labelText: 'Email',
// //                             prefixIcon: const Icon(Icons.email),
// //                             border: OutlineInputBorder(
// //                               borderRadius: BorderRadius.circular(10),
// //                             ),
// //                           ),
// //                         ),
// //                         const SizedBox(height: 20),
// //                         TextField(
// //                           controller: passwordController,
// //                           obscureText: true,
// //                           decoration: InputDecoration(
// //                             labelText: 'Password',
// //                             prefixIcon: const Icon(Icons.lock),
// //                             border: OutlineInputBorder(
// //                               borderRadius: BorderRadius.circular(10),
// //                             ),
// //                           ),
// //                         ),
// //                         const SizedBox(height: 30),
// //                         ElevatedButton(
// //                           style: ElevatedButton.styleFrom(
// //                             padding: const EdgeInsets.symmetric(
// //                                 horizontal: 50, vertical: 15),
// //                             shape: RoundedRectangleBorder(
// //                               borderRadius: BorderRadius.circular(10),
// //                             ),
// //                             backgroundColor: Colors.teal,
// //                           ),
// //                           onPressed: () async {
// //                             await auth.login(
// //                                 emailController.text, passwordController.text);
// //                             if (auth.user != null) {
// //                               context.go('/tasks');
// //                             }
// //                           },
// //                           child: const Text(
// //                             'Login',
// //                             style: TextStyle(
// //                                 fontSize: 18,
// //                                 color: Color.fromARGB(255, 255, 255, 255)),
// //                           ),
// //                         ),
// //                         const SizedBox(height: 20),
// //                         TextButton(
// //                           onPressed: () {
// //                             context.push(
// //                               '/signup',
// //                               extra: (BuildContext context,
// //                                   Animation<double> animation,
// //                                   Animation<double> secondaryAnimation,
// //                                   Widget child) {
// //                                 return SlideTransition(
// //                                   position: Tween<Offset>(
// //                                     begin: const Offset(1.0, 0.0),
// //                                     end: Offset.zero,
// //                                   ).animate(animation),
// //                                   child: child,
// //                                 );
// //                               },
// //                             );
// //                           },
// //                           child: const Text(
// //                             'Don\'t have an account? Sign Up',
// //                             style: TextStyle(
// //                               color: Colors.teal,
// //                               fontSize: 16,
// //                               fontWeight: FontWeight.w600,
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';
// import '../providers/auth_provider.dart';
// import 'package:google_fonts/google_fonts.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final auth = Provider.of<AuthProvider>(context);

//     final emailController = TextEditingController();
//     final passwordController = TextEditingController();

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Padding(
//           padding: const EdgeInsets.only(
//             bottom: 24.0,
//           ),
//           child: Text(
//             'Login',
//             style: GoogleFonts.pacifico(
//                 fontSize: 34,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 255, 255, 255)),
//           ),
//         ),
//         centerTitle: true,
//         elevation: 1,
//       ),
//       body: Stack(
//         children: [
//           // Gradient background
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Colors.teal, Colors.green],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//           ),
//           Center(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: Card(
//                   color: Color.fromARGB(255, 236, 255, 237),
//                   elevation: 8,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           'Welcome Back!',
//                           style: GoogleFonts.pacifico(
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.teal,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text(
//                           'Login to continue',
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.grey,
//                           ),
//                         ),
//                         const SizedBox(height: 30),
//                         TextField(
//                           controller: emailController,
//                           decoration: InputDecoration(
//                             labelText: 'Email',
//                             prefixIcon: const Icon(Icons.email),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         TextField(
//                           controller: passwordController,
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             labelText: 'Password',
//                             prefixIcon: const Icon(Icons.lock),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 30),
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 50, vertical: 15),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             backgroundColor: Colors.teal,
//                           ),
//                           onPressed: () async {
//                             await auth.login(
//                                 emailController.text, passwordController.text);
//                             if (auth.user != null) {
//                               context.go('/tasks');
//                             }
//                           },
//                           child: const Text(
//                             'Login',
//                             style: TextStyle(
//                                 fontSize: 18,
//                                 color: Color.fromARGB(255, 255, 255, 255)),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         TextButton(
//                           onPressed: () {
//                             context.push(
//                               '/signup',
//                               extra: (BuildContext context,
//                                   Animation<double> animation,
//                                   Animation<double> secondaryAnimation,
//                                   Widget child) {
//                                 return FadeTransition(
//                                   opacity: Tween<double>(
//                                     begin: 0.0,
//                                     end: 8.0,
//                                   ).animate(CurvedAnimation(
//                                     parent: animation,
//                                     curve: Curves.easeInOut,
//                                   )),
//                                   child: child,
//                                 );
//                               },
//                             );
//                           },
//                           child: const Text(
//                             'Don\'t have an account? Sign Up',
//                             style: TextStyle(
//                               color: Colors.teal,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    // Define scale animation for zoom-in effect
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.8).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(
            bottom: 24.0,
          ),
          child: Text(
            'Login',
            style: GoogleFonts.pacifico(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.green],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: Card(
                    color: const Color.fromARGB(255, 236, 255, 237),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Welcome Back!',
                            style: GoogleFonts.pacifico(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Login to continue',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: const Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: const Icon(Icons.lock),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.teal,
                            ),
                            onPressed: () async {
                              await auth.login(emailController.text,
                                  passwordController.text);
                              if (auth.user != null) {
                                context.go('/tasks');
                              }
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextButton(
                            onPressed: () {
                              _controller.forward().then((value) {
                                context.go('/signup');
                              });
                            },
                            child: const Text(
                              'Don\'t have an account? Sign Up',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
