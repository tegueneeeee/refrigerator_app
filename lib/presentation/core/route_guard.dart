import 'package:auto_route/auto_route.dart';
import 'package:flutter_app/application/auth/auth_provider.dart';
import 'package:flutter_app/presentation/routes/app_router.gr.dart';

class RouteGuard extends AutoRouteGuard {
  final AuthProvider authProvider;
  RouteGuard(this.authProvider);
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    authProvider.state.when(
      initial: () {
        router.push(const SignInRoute());
      },
      authenticated: () {
        resolver.next(true);
      },
      unauthenticated: () {
        router.push(const SignInRoute());
      },
    );
  }
}
