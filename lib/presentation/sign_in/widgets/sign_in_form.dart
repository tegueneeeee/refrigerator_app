import 'package:flutter/material.dart';
import 'package:flutter_app/application/auth/sign_in_form/sign_in_form_event.dart';
import 'package:flutter_app/application/auth/sign_in_form/sign_in_form_provider.dart';
import 'package:flutter_app/presentation/core/snack_bar.dart';
import 'package:provider/provider.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<SignInFormProvider>();
    if (provider.state.errorMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          displaySnackBar(
            context,
            errorMessage: provider.state.errorMessage!,
          );
          provider.onEvent(const SignInFormEvent.setErrorMessageNull());
        },
      );
    }
    return Form(
      autovalidateMode: provider.state.showValidateMessageMode,
      child: ListView(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              label: Text('Email'),
            ),
            autocorrect: false,
            onChanged: (value) => provider.onEvent(
              SignInFormEvent.emailChanged(value),
            ),
            validator: (_) {
              if (provider.state.emailAddress.isValid) {
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
            onChanged: (value) => provider.onEvent(
              SignInFormEvent.passwordChanged(value),
            ),
            validator: (_) {
              if (provider.state.password.isValid) {
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
                    provider.onEvent(
                      const SignInFormEvent.signInWithEmailAndPasswordPressed(),
                    )
                  },
                  child: const Text('SIGN IN'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => {
                    provider.onEvent(
                      const SignInFormEvent
                          .registerWithEmailAndPasswordPressed(),
                    )
                  },
                  child: const Text('REGISTER'),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () => {
              provider.onEvent(
                const SignInFormEvent.signInWithGooglePressed(),
              )
            },
            child: const Text('SIGN IN WITH GOOGLE'),
          ),
        ],
      ),
    );
  }
}
