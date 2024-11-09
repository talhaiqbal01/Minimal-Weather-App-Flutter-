import 'package:flutter/material.dart';
import 'package:weather_app/common/widgets/alt_elevated_button/alt_elevated_button.dart';
import 'package:weather_app/utils/constants/colors.dart';
import 'package:weather_app/utils/helpers/helper_functions.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../elevated_button/elevated_button.dart';

class TActionDialog extends StatelessWidget {

  final IconData? icon;
  final RxBool? loading;
  final String title;
  final String subtitle;
  final VoidCallback onPress;
  final String buttonTitle;

  const TActionDialog({
    super.key,
    this.icon,
    this.loading,
    required this.title,
    required this.subtitle,
    required this.onPress,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    final textTheme = Theme.of(context).textTheme;
    double iconSize = TSizes.iconMd;

    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(TSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: icon != null,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: iconSize,
                    backgroundColor: TColors.primary.withOpacity(0.2),
                    child: Center(child: Icon(icon, color: isDark ? TColors.darkIcon : TColors.lightIcon, size: iconSize * 0.8)),
                  ),
                  const Gap(TSizes.sm),
                ],
              ),
            ),
            Text(title, style: textTheme.headlineSmall),
            const Gap(TSizes.sm),
            Text(subtitle, style: textTheme.bodySmall),
            const Gap(TSizes.lg),
            Row(
              children: [
                Expanded(child: TAltElevatedButton(onPress: () => Get.back(), text: TTexts.cancel.tr)),
                const Gap(TSizes.sm),
                Expanded(child: TElevatedButton(loading: loading, onPress: onPress, text: buttonTitle)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
