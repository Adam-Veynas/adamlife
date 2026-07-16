import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  static const double _borderRadius = 16;
  static const EdgeInsets _defaultPadding = EdgeInsets.all(16);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Material(
        color: theme.colorScheme.surface,
        elevation: 1,
        shadowColor: theme.colorScheme.shadow,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(_borderRadius),
        child: Padding(
          padding: padding ?? _defaultPadding,
          child: child,
        ),
      ),
    );
  }
}
