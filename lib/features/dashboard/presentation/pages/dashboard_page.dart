import 'package:adamlife/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const String title = 'Dashboard';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Good morning 👋',
            style: textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            _formatDate(DateTime.now()),
            style: textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 16),
          AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Today's Tasks", style: textTheme.titleMedium),
                const SizedBox(height: 12),
                const Divider(height: 1),
                const SizedBox(height: 12),
                Text('No tasks for today', style: textTheme.bodyMedium),
              ],
            ),
          ),
          const SizedBox(height: 16),
          AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Finance', style: textTheme.titleMedium),
                const SizedBox(height: 12),
                const Divider(height: 1),
                const SizedBox(height: 12),
                Text('Balance', style: textTheme.bodyMedium),
                const SizedBox(height: 8),
                Text(
                  '0 ₸',
                  style: textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Vehicle', style: textTheme.titleMedium),
                const SizedBox(height: 12),
                const Divider(height: 1),
                const SizedBox(height: 12),
                Text('No vehicle added', style: textTheme.bodyMedium),
              ],
            ),
          ),
          const SizedBox(height: 16),
          AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Quick Actions', style: textTheme.titleMedium),
                const SizedBox(height: 12),
                const Divider(height: 1),
                const SizedBox(height: 12),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('+ Add Task'),
                ),
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('+ Add Expense'),
                ),
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('+ Add Vehicle'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String _formatDate(DateTime date) {
  const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  return '${date.day} ${months[date.month - 1]} ${date.year}';
}
