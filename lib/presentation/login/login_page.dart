import 'package:flutter/material.dart';
import 'package:flutter_app/application/view_model/login/login_event.dart';
import 'package:flutter_app/application/view_model/login/login_viewmodel.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP TITLE"),
      ),
      body: Form(
        autovalidateMode: viewModel.state.showErrorMessages,
        child: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                label: Text('Email'),
              ),
              autocorrect: false,
              onChanged: (value) => viewModel.onEvent(
                LoginEvent.emailChanged(value),
              ),
              validator: (_) {
                if (viewModel.state.validatedEmail) {
                  return null;
                } else {
                  return 'Invalid Email';
                }
              },
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                label: Text('Password'),
              ),
              autocorrect: false,
              obscureText: true,
              onChanged: (value) => viewModel.onEvent(
                LoginEvent.passwordChanged(value),
              ),
              validator: (_) {
                if (viewModel.state.validatedPassword) {
                  return null;
                } else {
                  return 'Invalid Password';
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
