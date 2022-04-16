import 'package:cross_board/feature/workout_board_screen/workout_board_screen.dart';
import 'package:cross_board/model/workout_list.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final WorkoutList workoutList;
  const HomeCard({Key? key, required this.workoutList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WorkoutBoardScreen(workoutList: workoutList),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(workoutList.label),
            Text(
              workoutList.time.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
