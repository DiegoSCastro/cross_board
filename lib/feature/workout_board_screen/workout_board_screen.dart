import 'package:cross_board/feature/workout_board_screen/workout_item.dart';
import 'package:cross_board/model/workout_list.dart';
import 'package:flutter/material.dart';

class WorkoutBoardScreen extends StatefulWidget {
  final WorkoutList workoutList;
  const WorkoutBoardScreen({
    Key? key,
    required this.workoutList,
  }) : super(key: key);

  @override
  _WorkoutBoardScreenState createState() => _WorkoutBoardScreenState();
}

class _WorkoutBoardScreenState extends State<WorkoutBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.workoutList.label,
        ),
      ),
      body: ListView.builder(
        itemCount: widget.workoutList.workouts?.length,
        itemBuilder: (context, index) {
          final workout = widget.workoutList.workouts?[index];
          if (workout != null) {
            return WorkoutItem(workout: workout);
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
