// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskData _$$_TaskDataFromJson(Map<String, dynamic> json) => _$_TaskData(
      title: json['title'] as String,
      details: json['details'] as String,
      createdDateTime: DateTime.parse(json['createdDateTime'] as String),
      updatedDateTime: DateTime.parse(json['updatedDateTime'] as String),
    );

Map<String, dynamic> _$$_TaskDataToJson(_$_TaskData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'details': instance.details,
      'createdDateTime': instance.createdDateTime.toIso8601String(),
      'updatedDateTime': instance.updatedDateTime.toIso8601String(),
    };
