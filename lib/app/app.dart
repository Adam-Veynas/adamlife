import 'package:adamlife/app/theme/app_theme.dart';
import 'package:adamlife/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

class AdamLifeApp extends StatelessWidget {
  const AdamLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: AppTheme.light,
      home: const Placeholder(),
    );
  }
}
