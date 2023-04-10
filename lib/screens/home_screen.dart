import 'package:flutter/material.dart';

import '../models/workout.dart';
import '../widgets/workout_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Workout> workouts;

  HomeScreen({required this.workouts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Workout Tracker',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        itemCount: workouts.length,
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(height: 16),
        itemBuilder: (BuildContext context, int index) {
          Workout workout = workouts[index];
          return WorkoutCard(workout: workout);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
