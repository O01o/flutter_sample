import 'package:flutter_sample/freezed_entities/todo_object.dart';
import 'package:go_router/go_router.dart';
import 'all_screens.dart';

/**
 * ここが画面遷移のルートを定義する場所となります。
 * 画面を追加したい場合は、screensディレクトリに新たなファイルを作成し、
 * all_screens.dartに遷移先のパスを追加してください。
 * Dartにはワイルドカードのようなディレクティブがサポートされていないため、
 * 明示的にall_screens.dartのような場所で複数のインポートを明示的に定義する必要があります。
 */
final router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (context, state) => const TopScreen(), 
    ),
    GoRoute(
      path: '/add-task',
      builder: (context, state) => const AddTaskScreen(),
    ),
    GoRoute(
      path: '/update-task',
      builder: (context, state) => UpdateTaskScreen(todoTask: state.queryParameters['todo-task'] as TodoTask),
    ),
    GoRoute(
      path: '/setting',
      builder: (context, state) => const SettingsScreen(),
    )
  ]
);