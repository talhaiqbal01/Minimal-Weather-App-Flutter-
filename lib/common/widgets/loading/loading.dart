import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';

class TLoading extends StatelessWidget {

  final double? size;
  final Color? color;

  const TLoading({super.key, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    double? loadingSize = size ?? TSizes.iconMd;

    return SizedBox(
      height: loadingSize,
      width: loadingSize,
      child: const CircularProgressIndicator(),
    );
  }
}
