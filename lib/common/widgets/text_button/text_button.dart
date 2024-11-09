import 'package:flutter/material.dart';
import 'package:weather_app/common/widgets/loading/loading.dart';
import '../../../utils/constants/colors.dart';
import 'package:get/get.dart';

class TTextButton extends StatelessWidget {

  final Color? color;
  final RxBool? loading;
  final VoidCallback onPress;
  final String text;

  const TTextButton({
    super.key, this.color, this.loading,
    required this.onPress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {

    RxBool buttonLoading = loading ?? false.obs;

    final textTheme = Theme.of(context).textTheme;

    return Obx(
      () => buttonLoading.value
          ? TLoading(color: color ?? TColors.primary)
          : TextButton(
              onPressed: onPress,
              child: Text(text, style: textTheme.titleMedium!.copyWith(color: color ?? TColors.primary)),
            ),
    );
  }
}
