// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoMangerNotifierHash() =>
    r'6acd879d03eb02d2f25b1eed40a8de6fb9b98f17';

/// See also [TodoMangerNotifier].
@ProviderFor(TodoMangerNotifier)
final todoMangerNotifierProvider =
    AsyncNotifierProvider<TodoMangerNotifier, TodoManager>.internal(
  TodoMangerNotifier.new,
  name: r'todoMangerNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoMangerNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoMangerNotifier = AsyncNotifier<TodoManager>;
String _$todoTaskListNotifierHash() =>
    r'2beec88a48c4fd983c583a31ab20fed2872de057';

/// See also [TodoTaskListNotifier].
@ProviderFor(TodoTaskListNotifier)
final todoTaskListNotifierProvider = AutoDisposeAsyncNotifierProvider<
    TodoTaskListNotifier, List<TodoTask>>.internal(
  TodoTaskListNotifier.new,
  name: r'todoTaskListNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoTaskListNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoTaskListNotifier = AutoDisposeAsyncNotifier<List<TodoTask>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
