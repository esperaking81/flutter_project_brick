import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:{{{project_name.snakeCase()}}}/config/config.dart';

part 'module.g.dart';

@riverpod
class SplashNotifier extends _$SplashNotifier {
  @override
  FutureOr<void> build() async {}

  Future<void> handleStartupLogic() async {
    // TODO: handle startup logic here.
    final router = ref.read(appRouterProvider);
  }
}
