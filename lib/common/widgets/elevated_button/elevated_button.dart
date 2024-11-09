import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants/sizes.dart';
import '../loading/loading.dart';

class TElevatedButton extends StatelessWidget {

  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final RxBool? enabled;
  final RxBool? loading;
  final VoidCallback onPress;
  final String text;

  const TElevatedButton({
    super.key,
    this.height,
    this.width,
    this.backgroundColor,
    this.textColor,
    this.enabled,
    this.loading,
    required this.onPress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
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
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
          child: isButtonLoading.value
              ? TLoading(size: buttonHeight * 0.4)
              : Text(text, style: textTheme.titleSmall!.copyWith(fontSize: buttonHeight * 0.3, fontWeight: FontWeight.w900, color: textColor)),
        ),
      ),
    );
  }
}
