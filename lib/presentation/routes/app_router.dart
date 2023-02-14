import 'package:auto_route/auto_route.dart';
import 'package:flutter_app/presentation/core/route_guard.dart';
import 'package:flutter_app/presentation/home/home_page.dart';
import 'package:flutter_app/presentation/sign_in/sign_in_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
      guards: [RouteGuard],
    ),
    AutoRoute(page: SignInPage),
  ],
)
class $AppRouter {}
