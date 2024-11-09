import 'package:flutter/material.dart';
import 'package:weather_app/utils/constants/colors.dart';

class TBadge extends StatelessWidget {

  final String? labelText;
  final bool? isBadgeVisible;
  final IconData icon;

  const TBadge({super.key, this.labelText, this.isBadgeVisible, required this.icon});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    String labelString = labelText ?? '';

    return Badge(
      isLabelVisible: isBadgeVisible ?? true,
      label: Text(labelString, style: textTheme.labelSmall!.copyWith(color: TColors.primary)),
      child: Icon(icon),
    );
  }
}
