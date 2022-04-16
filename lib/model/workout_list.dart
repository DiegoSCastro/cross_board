import 'package:cross_board/model/workout.dart';

class WorkoutList {
  final String label;
  final List<Workout>? workouts;
  final int? time;

  WorkoutList({
    required this.label,
    this.workouts = const [],
    this.time,
  });
}
