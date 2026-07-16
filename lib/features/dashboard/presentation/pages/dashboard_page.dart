import 'package:adamlife/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const String title = 'Dashboard';

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppCard(child: Text("Today's Tasks")),
          SizedBox(height: 16),
          AppCard(child: Text('Finance')),
          SizedBox(height: 16),
          AppCard(child: Text('Vehicle')),
        ],
      ),
    );
  }
}
