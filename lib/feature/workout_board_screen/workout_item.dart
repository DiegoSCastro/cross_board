import 'package:cross_board/model/workout.dart';
import 'package:flutter/material.dart';

class WorkoutItem extends StatelessWidget {
  final Workout workout;
  const WorkoutItem({Key? key, required this.workout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[300],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (workout.count != null) Text(workout.count.toString()),
            Text(workout.name),
            Text(
              workout.time.toString(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Image.network(
                workout.imageUrl ?? '',
                height: 120,
                width: 120,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
