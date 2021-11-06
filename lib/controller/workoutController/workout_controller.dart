import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:workout/model/workouts/workout_row.dart';
import 'package:workout/view/widgets/workout_card.dart';
import 'package:http/http.dart' as http;

class WorkoutController {
  List<WorkoutRow> workouts = [];

  Future<List<WorkoutRow>> fetchWorkoutRows() async {
    final response = await http.get(Uri.parse('http://localhost:3000/'));
    workouts = [];

    if (response.statusCode == 200) {
      debugPrint('recieved');
      for (var i = 0; i < jsonDecode(response.body).length; i++) {
        workouts.add(WorkoutRow.fromJson(jsonDecode(response.body)[i]));
      }
      return workouts;
    } else {
      debugPrint('failed to load');
      throw Exception('Failed to load the workout');
    }
  }
}
