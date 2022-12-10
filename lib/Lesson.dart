class Lesson {
  String? id;
  String? name;
  String? category;
  String? duration;

  Lesson({
    this.id,
    this.name,
    this.category,
    this.duration
  });

  Lesson.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'].toString();
    category = json['category'].toString();
    duration = json['duration'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['category'] = category;
    data['duration'] = duration;
    return data;
  }
}