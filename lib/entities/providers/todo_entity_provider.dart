import 'package:flutter_sample/entities/freezed/todo_object.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todoManagerProvider = Provider((ref) => TodoManager());