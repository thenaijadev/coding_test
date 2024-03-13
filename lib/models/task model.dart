import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Task {
  final String title;
  final String subTitle;
  final bool isCompleted;
  Task({
    required this.title,
    required this.subTitle,
    required this.isCompleted,
  });

  Task copyWith({
    String? title,
    String? subTitle,
    bool? isCompleted,
  }) {
    return Task(
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subTitle': subTitle,
      'isCompleted': isCompleted,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map['title'] as String,
      subTitle: map['subTitle'] as String,
      isCompleted: map['isCompleted'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) =>
      Task.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Task(title: $title, subTitle: $subTitle, isCompleted: $isCompleted)';

  @override
  bool operator ==(covariant Task other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.subTitle == subTitle &&
        other.isCompleted == isCompleted;
  }

  @override
  int get hashCode => title.hashCode ^ subTitle.hashCode ^ isCompleted.hashCode;
}
