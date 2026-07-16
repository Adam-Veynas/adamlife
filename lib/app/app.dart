import 'package:adamlife/app/theme/app_theme.dart';
import 'package:adamlife/core/constants/app_constants.dart';
import 'package:adamlife/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

class AdamLifeApp extends StatelessWidget {
  const AdamLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const DashboardPage(),
    );
  }
}
