import 'package:riverpod_annotation/riverpod_annotation.dart';

// ignore: unused_import
import 'package:{{{project_name.snakeCase()}}}/features/features.dart';

import 'app_router.dart';

part 'app_router_provider.g.dart';

@riverpod
AppRouter appRouter(AppRouterRef ref) {
  return AppRouter();
}
