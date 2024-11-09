import 'package:flutter/material.dart';
import 'package:weather_app/utils/constants/colors.dart';
import 'package:weather_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import '../../../utils/constants/sizes.dart';
import '../loading/loading.dart';

class TAltElevatedButton extends StatelessWidget {

  final double? height;
  final double? width;
  final RxBool? enabled;
  final RxBool? loading;
  final VoidCallback onPress;
  final String text;

  const TAltElevatedButton({
    super.key,
    this.height,
    this.width,
    this.enabled,
    this.loading,
    required this.onPress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    final textTheme = Theme.of(context).textTheme;
    RxBool? isButtonEnabled = enabled ?? true.obs;
    RxBool? isButtonLoading = loading ?? false.obs;
    double? buttonHeight = height ?? TSizes.buttonHeight;
    double? buttonWidth = width ?? double.infinity;

    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: Obx(
        () => ElevatedButton(
          onPressed: isButtonEnabled.value ? isButtonLoading.value ? null : onPress : null,
          style: ElevatedButton.styleFrom(backgroundColor: isDark ? TColors.white : TColors.black),
          child: isButtonLoading.value
              ? TLoading(size: buttonHeight * 0.4)
              : Text(
                  text,
                  style: textTheme.titleSmall!.copyWith(fontSize: buttonHeight * 0.3, fontWeight: FontWeight.w900, color: isDark ? TColors.black : TColors.white),
                ),
        ),
      ),
    );
  }
}
