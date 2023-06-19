// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoTask _$$_TodoTaskFromJson(Map<String, dynamic> json) => _$_TodoTask(
      id: json['id'] as String,
      content: json['content'] as String,
      createdDateTime: DateTime.parse(json['createdDateTime'] as String),
      updatedDateTime: DateTime.parse(json['updatedDateTime'] as String),
    );

Map<String, dynamic> _$$_TodoTaskToJson(_$_TodoTask instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'createdDateTime': instance.createdDateTime.toIso8601String(),
      'updatedDateTime': instance.updatedDateTime.toIso8601String(),
    };

_$_TodoManager _$$_TodoManagerFromJson(Map<String, dynamic> json) =>
    _$_TodoManager(
      userName: json['userName'] as String?,
      userProfile: json['userProfile'] as String?,
      todoTaskList: (json['todoTaskList'] as List<dynamic>?)
              ?.map((e) => TodoTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TodoManagerToJson(_$_TodoManager instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'userProfile': instance.userProfile,
      'todoTaskList': instance.todoTaskList,
    };
