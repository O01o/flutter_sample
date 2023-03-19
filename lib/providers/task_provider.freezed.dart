// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskData _$TaskDataFromJson(Map<String, dynamic> json) {
  return _TaskData.fromJson(json);
}

/// @nodoc
mixin _$TaskData {
  String get title => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  DateTime get createdDateTime => throw _privateConstructorUsedError;
  DateTime get updatedDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDataCopyWith<TaskData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDataCopyWith<$Res> {
  factory $TaskDataCopyWith(TaskData value, $Res Function(TaskData) then) =
      _$TaskDataCopyWithImpl<$Res, TaskData>;
  @useResult
  $Res call(
      {String title,
      String details,
      DateTime createdDateTime,
      DateTime updatedDateTime});
}

/// @nodoc
class _$TaskDataCopyWithImpl<$Res, $Val extends TaskData>
    implements $TaskDataCopyWith<$Res> {
  _$TaskDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? details = null,
    Object? createdDateTime = null,
    Object? updatedDateTime = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      createdDateTime: null == createdDateTime
          ? _value.createdDateTime
          : createdDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedDateTime: null == updatedDateTime
          ? _value.updatedDateTime
          : updatedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskDataCopyWith<$Res> implements $TaskDataCopyWith<$Res> {
  factory _$$_TaskDataCopyWith(
          _$_TaskData value, $Res Function(_$_TaskData) then) =
      __$$_TaskDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String details,
      DateTime createdDateTime,
      DateTime updatedDateTime});
}

/// @nodoc
class __$$_TaskDataCopyWithImpl<$Res>
    extends _$TaskDataCopyWithImpl<$Res, _$_TaskData>
    implements _$$_TaskDataCopyWith<$Res> {
  __$$_TaskDataCopyWithImpl(
      _$_TaskData _value, $Res Function(_$_TaskData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? details = null,
    Object? createdDateTime = null,
    Object? updatedDateTime = null,
  }) {
    return _then(_$_TaskData(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      createdDateTime: null == createdDateTime
          ? _value.createdDateTime
          : createdDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedDateTime: null == updatedDateTime
          ? _value.updatedDateTime
          : updatedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskData with DiagnosticableTreeMixin implements _TaskData {
  const _$_TaskData(
      {required this.title,
      required this.details,
      required this.createdDateTime,
      required this.updatedDateTime});

  factory _$_TaskData.fromJson(Map<String, dynamic> json) =>
      _$$_TaskDataFromJson(json);

  @override
  final String title;
  @override
  final String details;
  @override
  final DateTime createdDateTime;
  @override
  final DateTime updatedDateTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskData(title: $title, details: $details, createdDateTime: $createdDateTime, updatedDateTime: $updatedDateTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskData'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('details', details))
      ..add(DiagnosticsProperty('createdDateTime', createdDateTime))
      ..add(DiagnosticsProperty('updatedDateTime', updatedDateTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskData &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.createdDateTime, createdDateTime) ||
                other.createdDateTime == createdDateTime) &&
            (identical(other.updatedDateTime, updatedDateTime) ||
                other.updatedDateTime == updatedDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, details, createdDateTime, updatedDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskDataCopyWith<_$_TaskData> get copyWith =>
      __$$_TaskDataCopyWithImpl<_$_TaskData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskDataToJson(
      this,
    );
  }
}

abstract class _TaskData implements TaskData {
  const factory _TaskData(
      {required final String title,
      required final String details,
      required final DateTime createdDateTime,
      required final DateTime updatedDateTime}) = _$_TaskData;

  factory _TaskData.fromJson(Map<String, dynamic> json) = _$_TaskData.fromJson;

  @override
  String get title;
  @override
  String get details;
  @override
  DateTime get createdDateTime;
  @override
  DateTime get updatedDateTime;
  @override
  @JsonKey(ignore: true)
  _$$_TaskDataCopyWith<_$_TaskData> get copyWith =>
      throw _privateConstructorUsedError;
}
