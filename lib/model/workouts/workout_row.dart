
class WorkoutRow {
  final String name;
  final String type;
  final String days;

  const WorkoutRow({
    required this.name,
    required this.type,
    required this.days,
  });

  factory WorkoutRow.fromJson(Map<String, dynamic>json) {
    return WorkoutRow(
      name: json['name'],
      type: json['type'],
      days: json['days'],
    );
  }
}