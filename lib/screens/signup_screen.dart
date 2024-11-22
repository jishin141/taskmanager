// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';
// // import 'package:provider/provider.dart';
// // import '../providers/auth_provider.dart';

// // class SignUpScreen extends StatelessWidget {
// //   const SignUpScreen({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     final auth = Provider.of<AuthProvider>(context);

// //     final emailController = TextEditingController();
// //     final passwordController = TextEditingController();

// //     return Scaffold(
// //       appBar: AppBar(title: const Text('Sign Up')),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           children: [
// //             TextField(
// //                 controller: emailController,
// //                 decoration: const InputDecoration(labelText: 'Email')),
// //             TextField(
// //                 controller: passwordController,
// //                 decoration: const InputDecoration(labelText: 'Password'),
// //                 obscureText: true),
// //             ElevatedButton(
// //               onPressed: () async {
// //                 await auth.signUp(
// //                     emailController.text, passwordController.text);
// //                 if (auth.user != null) {
// //                   context.go('/tasks');
// //                 }
// //               },
// //               child: const Text('Sign Up'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';
// import '../providers/auth_provider.dart';
// import 'package:google_fonts/google_fonts.dart';

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final auth = Provider.of<AuthProvider>(context);

//     final emailController = TextEditingController();
//     final passwordController = TextEditingController();

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Padding(
//           padding: const EdgeInsets.only(bottom: 24.0),
//           child: Text(
//             'Sign Up',
//             style: GoogleFonts.pacifico(
//                 fontSize: 34,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 255, 255, 255)),
//           ),
//         ),
//         centerTitle: true,
//         elevation: 0,
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
//                   color: Color.fromARGB(255, 240, 255, 244),
//                   elevation: 8,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           'Create an Account',
//                           style: GoogleFonts.pacifico(
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.teal,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text(
//                           'Sign up to get started',
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
//                             await auth.signUp(
//                                 emailController.text, passwordController.text);
//                             if (auth.user != null) {
//                               context.go('/tasks');
//                             }
//                           },
//                           child: const Text(
//                             'Sign Up',
//                             style: TextStyle(fontSize: 18, color: Colors.white),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         TextButton(
//                           onPressed: () => context.go('/login'),
//                           child: const Text(
//                             'Already have an account? Login',
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

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
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
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceIn,
      ),
    );

    // Start the animation
    _controller.forward();
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
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Text(
            'Sign Up',
            style: GoogleFonts.pacifico(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0,
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
                    color: const Color.fromARGB(255, 240, 255, 244),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Create an Account',
                            style: GoogleFonts.pacifico(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Sign up to get started',
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
                              await auth.signUp(emailController.text,
                                  passwordController.text);
                              if (auth.user != null) {
                                context.go('/tasks');
                              }
                            },
                            child: const Text(
                              'Sign Up',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextButton(
                            onPressed: () {
                              _controller.reverse().then((value) {
                                context.go('/login');
                              });
                            },
                            child: const Text(
                              'Already have an account? Login',
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
