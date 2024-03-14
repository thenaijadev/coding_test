import 'dart:convert';

import 'package:uuid/uuid.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TaskModel {
  String title;
  String subTitle;
  bool? isCompleted;
  String? id;
  var uuid = const Uuid();
  TaskModel(
      {required this.title,
      required this.subTitle,
      this.isCompleted = false,
      this.id}) {
    id ??= const Uuid().v4();
  }

  TaskModel copyWith({
    String? title,
    String? subTitle,
    bool? isCompleted,
  }) {
    return TaskModel(
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

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      title: map['title'] as String,
      subTitle: map['subTitle'] as String,
      isCompleted: map['isCompleted'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) =>
      TaskModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Task(title: $title, subTitle: $subTitle, isCompleted: $isCompleted, id: $id)';

  @override
  bool operator ==(covariant TaskModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.subTitle == subTitle &&
        other.isCompleted == isCompleted;
  }

  @override
  int get hashCode => title.hashCode ^ subTitle.hashCode ^ isCompleted.hashCode;
}
