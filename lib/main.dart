import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app/di/provider_setup.dart';
import 'package:flutter_app/presentation/core/app_widget.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: globalProvider,
    child: const AppWidget(),
  ));
}
