import 'package:flutter/material.dart';
import 'package:workout/view/Screens/Workout/workout_screen.dart';
import 'package:workout/view/Screens/profile/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const WorkoutScreen(),
        '/profile': (context) => const ProfileScreen(),
      }
    );
  }
}
