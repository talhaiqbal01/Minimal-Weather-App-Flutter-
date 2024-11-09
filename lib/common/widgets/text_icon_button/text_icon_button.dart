import 'package:flutter/material.dart';
import 'package:weather_app/utils/constants/colors.dart';
import 'package:weather_app/utils/helpers/helper_functions.dart';

class TTextIconButton extends StatelessWidget {

  final VoidCallback onPress;
  final IconData icon;
  final String text;

  const TTextIconButton({super.key, required this.onPress, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {

    bool isDark = THelperFunctions.isDarkMode(context);

    final textTheme = Theme.of(context).textTheme;

    return TextButton.icon(
      onPressed: onPress,
      label: Text(text, style: textTheme.titleSmall),
      icon: Icon(icon, color: isDark ? TColors.darkIcon : TColors.lightIcon),
    );
  }
}
