class ButterScotchSet {
  String id;
  int reps;
  double weight;
  bool pr;

  ButterScotchSet({
    required this.id,
    required this.reps,
    required this.weight,
    required this.pr,
  });

  factory ButterScotchSet.fromJson(Map<String, dynamic> json) {
    return ButterScotchSet(
      id: json['id'],
      reps: json['reps'],
      weight: json['weight'],
      pr: json['pr'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'reps': reps,
        'weight': weight,
        'pr': pr,
      };
}