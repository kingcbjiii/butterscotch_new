class User {
  String id;
  String email;
  String name;
  String profileImageUrl;
  int height;
  double weight;
  double bodyfat;
  double bmi;

  User({
    required this.id,
    required this.email,
    required this.name,
    required this.profileImageUrl,
    required this.height,
    required this.weight,
    required this.bodyfat,
    required this.bmi,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'profileImageUrl': profileImageUrl,
      'height': height,
      'weight': weight,
      'bodyfat': bodyfat,
      'bmi': bmi,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      email: map['email'],
      name: map['name'],
      profileImageUrl: map['profileImageUrl'],
      height: map['height'],
      weight: map['weight'],
      bodyfat: map['bodyfat'],
      bmi: map['bmi'],
    );
  }

  void updateProfile({
    String? name,
    String? profileImageUrl,
    int? height,
    double? weight,
    double? bodyfat,
  }) {
    if (name != null) {
      this.name = name;
    }
    if (profileImageUrl != null) {
      this.profileImageUrl = profileImageUrl;
    }
    if (height != null) {
      this.height = height;
    }
    if (weight != null) {
      this.weight = weight;
    }
    if (bodyfat != null) {
      this.bodyfat = bodyfat;
    }
  }
}
