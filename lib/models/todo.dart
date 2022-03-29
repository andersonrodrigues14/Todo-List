class Todo {
  Todo({required this.title, required this.dataTime});

  Todo.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        dataTime = DateTime.parse(json['dataTime']);

  String title;
  DateTime dataTime;

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'dataTime': dataTime.toIso8601String(),
    };
  }
}
