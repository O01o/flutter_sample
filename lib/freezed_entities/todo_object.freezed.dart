// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoTask _$TodoTaskFromJson(Map<String, dynamic> json) {
  return _TodoTask.fromJson(json);
}

/// @nodoc
mixin _$TodoTask {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdDateTime => throw _privateConstructorUsedError;
  DateTime get updatedDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoTaskCopyWith<TodoTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoTaskCopyWith<$Res> {
  factory $TodoTaskCopyWith(TodoTask value, $Res Function(TodoTask) then) =
      _$TodoTaskCopyWithImpl<$Res, TodoTask>;
  @useResult
  $Res call(
      {String id,
      String content,
      DateTime createdDateTime,
      DateTime updatedDateTime});
}

/// @nodoc
class _$TodoTaskCopyWithImpl<$Res, $Val extends TodoTask>
    implements $TodoTaskCopyWith<$Res> {
  _$TodoTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? createdDateTime = null,
    Object? updatedDateTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_TodoTaskCopyWith<$Res> implements $TodoTaskCopyWith<$Res> {
  factory _$$_TodoTaskCopyWith(
          _$_TodoTask value, $Res Function(_$_TodoTask) then) =
      __$$_TodoTaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String content,
      DateTime createdDateTime,
      DateTime updatedDateTime});
}

/// @nodoc
class __$$_TodoTaskCopyWithImpl<$Res>
    extends _$TodoTaskCopyWithImpl<$Res, _$_TodoTask>
    implements _$$_TodoTaskCopyWith<$Res> {
  __$$_TodoTaskCopyWithImpl(
      _$_TodoTask _value, $Res Function(_$_TodoTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? createdDateTime = null,
    Object? updatedDateTime = null,
  }) {
    return _then(_$_TodoTask(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$_TodoTask with DiagnosticableTreeMixin implements _TodoTask {
  const _$_TodoTask(
      {required this.id,
      required this.content,
      required this.createdDateTime,
      required this.updatedDateTime});

  factory _$_TodoTask.fromJson(Map<String, dynamic> json) =>
      _$$_TodoTaskFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final DateTime createdDateTime;
  @override
  final DateTime updatedDateTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoTask(id: $id, content: $content, createdDateTime: $createdDateTime, updatedDateTime: $updatedDateTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoTask'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('createdDateTime', createdDateTime))
      ..add(DiagnosticsProperty('updatedDateTime', updatedDateTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoTask &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDateTime, createdDateTime) ||
                other.createdDateTime == createdDateTime) &&
            (identical(other.updatedDateTime, updatedDateTime) ||
                other.updatedDateTime == updatedDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, content, createdDateTime, updatedDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoTaskCopyWith<_$_TodoTask> get copyWith =>
      __$$_TodoTaskCopyWithImpl<_$_TodoTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoTaskToJson(
      this,
    );
  }
}

abstract class _TodoTask implements TodoTask {
  const factory _TodoTask(
      {required final String id,
      required final String content,
      required final DateTime createdDateTime,
      required final DateTime updatedDateTime}) = _$_TodoTask;

  factory _TodoTask.fromJson(Map<String, dynamic> json) = _$_TodoTask.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  DateTime get createdDateTime;
  @override
  DateTime get updatedDateTime;
  @override
  @JsonKey(ignore: true)
  _$$_TodoTaskCopyWith<_$_TodoTask> get copyWith =>
      throw _privateConstructorUsedError;
}

TodoManager _$TodoManagerFromJson(Map<String, dynamic> json) {
  return _TodoManager.fromJson(json);
}

/// @nodoc
mixin _$TodoManager {
  String? get userName => throw _privateConstructorUsedError;
  String? get userProfile => throw _privateConstructorUsedError;
  List<TodoTask> get todoTaskList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoManagerCopyWith<TodoManager> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoManagerCopyWith<$Res> {
  factory $TodoManagerCopyWith(
          TodoManager value, $Res Function(TodoManager) then) =
      _$TodoManagerCopyWithImpl<$Res, TodoManager>;
  @useResult
  $Res call(
      {String? userName, String? userProfile, List<TodoTask> todoTaskList});
}

/// @nodoc
class _$TodoManagerCopyWithImpl<$Res, $Val extends TodoManager>
    implements $TodoManagerCopyWith<$Res> {
  _$TodoManagerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? userProfile = freezed,
    Object? todoTaskList = null,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      todoTaskList: null == todoTaskList
          ? _value.todoTaskList
          : todoTaskList // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoManagerCopyWith<$Res>
    implements $TodoManagerCopyWith<$Res> {
  factory _$$_TodoManagerCopyWith(
          _$_TodoManager value, $Res Function(_$_TodoManager) then) =
      __$$_TodoManagerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userName, String? userProfile, List<TodoTask> todoTaskList});
}

/// @nodoc
class __$$_TodoManagerCopyWithImpl<$Res>
    extends _$TodoManagerCopyWithImpl<$Res, _$_TodoManager>
    implements _$$_TodoManagerCopyWith<$Res> {
  __$$_TodoManagerCopyWithImpl(
      _$_TodoManager _value, $Res Function(_$_TodoManager) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? userProfile = freezed,
    Object? todoTaskList = null,
  }) {
    return _then(_$_TodoManager(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      todoTaskList: null == todoTaskList
          ? _value._todoTaskList
          : todoTaskList // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoManager with DiagnosticableTreeMixin implements _TodoManager {
  const _$_TodoManager(
      {this.userName,
      this.userProfile,
      final List<TodoTask> todoTaskList = const []})
      : _todoTaskList = todoTaskList;

  factory _$_TodoManager.fromJson(Map<String, dynamic> json) =>
      _$$_TodoManagerFromJson(json);

  @override
  final String? userName;
  @override
  final String? userProfile;
  final List<TodoTask> _todoTaskList;
  @override
  @JsonKey()
  List<TodoTask> get todoTaskList {
    if (_todoTaskList is EqualUnmodifiableListView) return _todoTaskList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoTaskList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoManager(userName: $userName, userProfile: $userProfile, todoTaskList: $todoTaskList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoManager'))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('userProfile', userProfile))
      ..add(DiagnosticsProperty('todoTaskList', todoTaskList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoManager &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            const DeepCollectionEquality()
                .equals(other._todoTaskList, _todoTaskList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, userProfile,
      const DeepCollectionEquality().hash(_todoTaskList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoManagerCopyWith<_$_TodoManager> get copyWith =>
      __$$_TodoManagerCopyWithImpl<_$_TodoManager>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoManagerToJson(
      this,
    );
  }
}

abstract class _TodoManager implements TodoManager {
  const factory _TodoManager(
      {final String? userName,
      final String? userProfile,
      final List<TodoTask> todoTaskList}) = _$_TodoManager;

  factory _TodoManager.fromJson(Map<String, dynamic> json) =
      _$_TodoManager.fromJson;

  @override
  String? get userName;
  @override
  String? get userProfile;
  @override
  List<TodoTask> get todoTaskList;
  @override
  @JsonKey(ignore: true)
  _$$_TodoManagerCopyWith<_$_TodoManager> get copyWith =>
      throw _privateConstructorUsedError;
}
