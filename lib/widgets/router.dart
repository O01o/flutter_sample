import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'screens/all_screens.dart';

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
      path: '/edit',
      builder: (context, state) => const EditTaskScreen(),
    ),
    GoRoute(
      path: '/setting',
      builder: (context, state) => const SettingsScreen(),
    )
  ]
);