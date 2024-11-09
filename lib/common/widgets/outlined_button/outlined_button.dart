import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants/sizes.dart';
import '../loading/loading.dart';

class TOutlinedButton extends StatelessWidget {

  final double? height;
  final double? width;
  final RxBool? loading;
  final VoidCallback onPress;
  final String text;

  const TOutlinedButton({
    super.key,
    this.height,
    this.width,
    this.loading,
    required this.onPress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    RxBool? isButtonLoading = loading ?? false.obs;

    double? buttonHeight = height ?? TSizes.buttonHeight;

    double? buttonWidth = width ?? double.infinity;

    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: Obx(
        () => OutlinedButton(
          onPressed: isButtonLoading.value ? null : onPress,
          child: isButtonLoading.value
              ? TLoading(size: buttonHeight * 0.4)
              : Text(text, style: textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w900, fontSize: buttonHeight * 0.3)),
        ),
      ),
    );
  }
}
