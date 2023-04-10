import 'package:butterscotch_new/models/set.dart';

import 'exercise.dart';

class Workout {
  String id;
  DateTime date;
  List<Exercise> exercises;
  List<List<ButterScotchSet>> sets;

  Workout({
    required this.id,
    required this.date,
    required this.exercises,
    required this.sets,
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    List<Exercise> exercises = [];
    List<List<ButterScotchSet>> sets = [];
    for (var exercise in json['exercises']) {
      exercises.add(Exercise.fromJson(exercise));
      List<ButterScotchSet> exerciseSets = [];
      for (var set in exercise['sets']) {
        exerciseSets.add(ButterScotchSet.fromJson(set));
      }
      sets.add(exerciseSets);
    }
    return Workout(
      id: json['id'],
      date: DateTime.parse(json['date']),
      exercises: exercises,
      sets: sets,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date.toString(),
        'exercises': exercises.map((exercise) => exercise.toJson()).toList(),
        'sets': sets
            .map((exerciseSets) =>
                exerciseSets.map((set) => set.toJson()).toList())
            .toList(),
      };
}
