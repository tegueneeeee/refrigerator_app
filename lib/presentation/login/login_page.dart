import 'package:flutter/material.dart';
import 'package:flutter_app/application/view_model/login/login_event.dart';
import 'package:flutter_app/application/view_model/login/login_viewmodel.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();
    if (viewModel.state.errorMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          _displaySnackBar(
            context,
            errorMessage: viewModel.state.errorMessage!,
          );
          viewModel.onEvent(const LoginEvent.setErrorMessageNull());
        },
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP TITLE"),
      ),
      body: Form(
        autovalidateMode: viewModel.state.showValidateMessageMode,
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
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => {
                      viewModel.onEvent(
                        const LoginEvent.signInWithEmailAndPasswordPressed(),
                      )
                    },
                    child: const Text('SIGN IN'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => {
                      viewModel.onEvent(
                        const LoginEvent.registerWithEmailAndPasswordPressed(),
                      )
                    },
                    child: const Text('REGISTER'),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () => {
                viewModel.onEvent(
                  const LoginEvent.signInWithGooglePressed(),
                )
              },
              child: const Text('SIGN IN WITH GOOGLE'),
            ),
          ],
        ),
      ),
    );
  }

  void _displaySnackBar(BuildContext context, {required String errorMessage}) {
    final snackBar = SnackBar(content: Text(errorMessage));
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
