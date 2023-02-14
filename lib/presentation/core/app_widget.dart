import 'package:flutter/material.dart';
import 'package:flutter_app/application/auth/auth_provider.dart';
import 'package:flutter_app/presentation/core/route_guard.dart';
import 'package:flutter_app/presentation/routes/app_router.gr.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AuthProvider>();
    final appRouter = AppRouter(
      routeGuard: RouteGuard(provider),
    );
    return MaterialApp.router(
      title: 'RefrigeratorApp',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
