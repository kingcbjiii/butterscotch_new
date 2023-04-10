import 'package:flutter/material.dart';

import '../models/workout.dart';

class WorkoutCard extends StatelessWidget {
  final Workout workout;

  WorkoutCard({required this.workout});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(workout.exercises[0].imageUrl),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Workout on ${workout.date}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: workout.exercises.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(workout.exercises[index].name),
                // subtitle: Text(
                //   '${workout.sets[index].reps} reps x ${workout.sets[index].weight} kg',
                // ),
              );
            },
          ),
        ],
      ),
    );
  }
}

