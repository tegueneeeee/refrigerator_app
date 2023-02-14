import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RefrigeratorApp',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SignInPage(),
    );
  }
}
