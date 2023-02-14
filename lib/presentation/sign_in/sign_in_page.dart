import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In '),
      ),
      body: const SignInForm(),
    );
  }
}
