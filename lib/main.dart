import 'package:bank/screens/home.dart';
import 'package:bank/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bank());
}

class Bank extends StatelessWidget {
  const Bank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bank",
      theme: AppTheme,
      home: const Home(),
    );
  }
}
