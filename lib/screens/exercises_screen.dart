import 'package:flutter/material.dart';

import '../models/exercise.dart';
import '../widgets/exercise_card.dart';

class ExercisesScreen extends StatelessWidget {
  final List<Exercise> exercises;

  ExercisesScreen({required this.exercises});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises'),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: exercises.length,
        itemBuilder: (BuildContext context, int index) {
          Exercise exercise = exercises[index];
          return ExerciseCard(exercise: exercise);
        },
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
