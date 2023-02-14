import 'package:flutter/material.dart';

void displaySnackBar(BuildContext context, {required String errorMessage}) {
  final snackBar = SnackBar(content: Text(errorMessage));
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
