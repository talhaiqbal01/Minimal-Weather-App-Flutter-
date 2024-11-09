import 'package:flutter/material.dart';
import 'package:weather_app/common/widgets/alt_elevated_button/alt_elevated_button.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../elevated_button/elevated_button.dart';

class TTextInputDialog extends StatelessWidget {

  final RxBool? loading;
  final RxBool? buttonEnabled;
  final TextEditingController? controller;
  final String? labelText;
  final TextInputType? keyboardType;
  final int? maxLength;
  final VoidCallback onPress;
  final String buttonTitle;

  const TTextInputDialog({
    super.key,
    this.loading,
    this.buttonEnabled,
    this.controller,
    this.labelText,
    this.keyboardType,
    this.maxLength,
    required this.onPress,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {

    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(TSizes.sm),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            TextFormField(
              controller: controller,
              decoration: InputDecoration(labelText: labelText),
              keyboardType: keyboardType,
              maxLines: 4,
              maxLength: maxLength,
            ),

            const Gap(TSizes.sm),

            Row(
              children: [
                Expanded(child: TAltElevatedButton(onPress: () => Get.back(), text: TTexts.cancel.tr)),
                const Gap(TSizes.sm),
                Expanded(child: TElevatedButton(enabled: buttonEnabled, loading: loading, onPress: onPress, text: buttonTitle)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
