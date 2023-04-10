class Exercise {
  String id;
  String name;
  String description;
  String imageUrl;

  Exercise({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
    };
  }

  factory Exercise.fromMap(Map<String, dynamic> map) {
    return Exercise(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      imageUrl: map['imageUrl'],
    );
  }

  void updateExercise({
    String? name,
    String? description,
    String? imageUrl,
  }) {
    if (name != null) {
      this.name = name;
    }
    if (description != null) {
      this.description = description;
    }
    if (imageUrl != null) {
      this.imageUrl = imageUrl;
    }
  }

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
      };
}

