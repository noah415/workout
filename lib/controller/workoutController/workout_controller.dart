import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:workout/model/workouts/workout_row.dart';
import 'package:workout/view/widgets/workout_card.dart';
import 'package:http/http.dart' as http;

class WorkoutController {
  List<WorkoutCard> workouts = [];

  Future<List<WorkoutCard>> fetchWorkoutCards() async {
    WorkoutRow workout;
    final response = await http.get(Uri.parse('http://localhost:3000/'));

    if (response.statusCode == 200) {
      debugPrint('recieved the workouts');
      for (var i = 0; i < jsonDecode(response.body).length; i++) {
        workout = WorkoutRow.fromJson(jsonDecode(response.body)[i]);
        workouts.add(WorkoutCard(
            name: workout.name, type: workout.type, days: workout.days));
      }
      debugPrint('successfully processed the API call');
      return workouts;
    } else {
      debugPrint('failed to load');
      throw Exception('Failed to load the workout');
    }
  }
}
