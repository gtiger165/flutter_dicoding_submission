import 'dart:convert';

class Agent {
  final String? name;
  final String? image;
  final String? detail;
  final String? skill;
  final double? score;
  Agent({
    this.name,
    this.image,
    this.detail,
    this.skill,
    this.score,
  });

  Agent copyWith({
    String? name,
    String? image,
    String? detail,
    String? skill,
    double? score,
  }) {
    return Agent(
      name: name ?? this.name,
      image: image ?? this.image,
      detail: detail ?? this.detail,
      skill: skill ?? this.skill,
      score: score ?? this.score,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'detail': detail,
      'skill': skill,
      'score': score,
    };
  }

  factory Agent.fromMap(Map<String, dynamic> map) {
    return Agent(
      name: map['name'],
      image: map['image'],
      detail: map['detail'],
      skill: map['skill'],
      score: map['score'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Agent.fromJson(String source) => Agent.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Agent(name: $name, image: $image, detail: $detail, skill: $skill, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Agent &&
        other.name == name &&
        other.image == image &&
        other.detail == detail &&
        other.skill == skill &&
        other.score == score;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        image.hashCode ^
        detail.hashCode ^
        skill.hashCode ^
        score.hashCode;
  }
}
