

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout/view/widgets/profile_name_row.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({
    Key? key
  }) : super(key: key);

  @override 
  _WorkoutScreen createState() => _WorkoutScreen(); 
}

class _WorkoutScreen extends State<WorkoutScreen> {
  List<dynamic> workoutList = []; // change dynamic to workout model

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            ProfileNameCircle(name: 'Noah'),
          ],
        ),
      ),
    );
  }
}