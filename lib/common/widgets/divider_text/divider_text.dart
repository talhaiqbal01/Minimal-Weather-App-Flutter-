import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TDividerText extends StatelessWidget {

  final String text;
  final Color? textColor;
  final double? textPadding;
  final double? dividerThickness;

  const TDividerText({super.key, required this.text, this.textColor, this.textPadding, this.dividerThickness});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.spaceBtwItems),
      child: Row(
        children: [
          Expanded(
            child: Divider(color: textColor ?? TColors.darkGrey, thickness: dividerThickness ?? 1),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: textPadding ?? TSizes.defaultSpace),
            child: Text(text, textAlign: TextAlign.center, style: textTheme.bodyLarge!.apply(color: TColors.darkGrey)),
          ),
          Expanded(
            child: Divider(color: textColor ?? TColors.darkGrey, thickness: dividerThickness ?? 1),
          ),
        ],
      ),
    );
  }
}
