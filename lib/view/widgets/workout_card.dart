import 'package:flutter/material.dart';
import 'package:workout/view/Styles/text_styles.dart';

List<WorkoutCard> workoutslist = [
  const WorkoutCard(name: 'Back', type: 'Strength', days: 'Mon/Wed/Fri'),
  const WorkoutCard(name: 'Chest', type: 'Strength', days: 'Tues/Thurs'),
  const WorkoutCard(name: 'Legs', type: 'Strength', days: 'Tues/Thurs'),
  const WorkoutCard(name: 'Bicepts', type: 'Strength', days: 'Mon/Wed/Fri'),
  const WorkoutCard(name: 'Tricepts', type: 'Strength', days: 'Tues/Thurs'),
  const WorkoutCard(name: 'Biking', type: 'Cardio', days: 'Tues/Thurs'),
  const WorkoutCard(name: 'Running', type: 'Cardio', days: 'Mon/Wed/Fri'),
  const WorkoutCard(name: 'Swimming', type: 'Cardio', days: 'Tues/Thurs'),
];

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({
    Key? key,
    required this.name,
    required this.type,
    required this.days,
  }) : super(key: key);

  final String name;
  final String type;
  final String days;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: cardColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: const EdgeInsets.all(5),child: Text(name, style: whiteTitle)),
              Padding(padding: const EdgeInsets.all(5),child: Text(days, style: whiteBody)),
            ],
          ),
          Padding(padding: const EdgeInsets.all(5), child: Text(type, style: whiteBody)),
        ],
      ),
      margin: const EdgeInsets.all(10),
      borderOnForeground: true,

    );
  }
}
