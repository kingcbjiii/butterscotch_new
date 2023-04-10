import 'exercise.dart';

class Routine {
  String id;
  String name;
  String description;
  List<Exercise> exercises;

  Routine({
    required this.id,
    required this.name,
    required this.description,
    required this.exercises,
  });

  factory Routine.fromJson(Map<String, dynamic> json) {
    List<Exercise> exercises = [];
    for (var exercise in json['exercises']) {
      exercises.add(Exercise.fromJson(exercise));
    }
    return Routine(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      exercises: exercises,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'exercises': exercises.map((exercise) => exercise.toJson()).toList(),
      };
}