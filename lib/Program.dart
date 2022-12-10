class Program {
  String? id;
  String? name;
  String? category;
  String? lesson;

  Program({
    this.id,
    this.name,
    this.category,
    this.lesson,
  });

  Program.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'].toString();
    category = json['category'].toString();
    lesson = json['lesson'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['category'] = category;
    data['lesson'] = lesson;
    return data;
  }
}