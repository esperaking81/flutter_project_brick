import 'package:auto_route/auto_route.dart';

import 'package:{{{project_name.snakeCase()}}}/features/features.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        initial: true,
        page: SplashRoute.page,
      ),
    ];
  }
}
