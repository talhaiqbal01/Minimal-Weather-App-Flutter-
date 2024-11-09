import 'package:weather_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:weather_app/utils/constants/colors.dart';

/// Loaders class for SnackBar-related operations
class TLoaders {
  TLoaders._(); // To avoid creating instances

  /// Function to show success SnackBar
  static void showSuccess(String message) => Get.snackbar(TTexts.success.tr, message, backgroundColor: TColors.success);

  /// Function to show error SnackBar
  static void showError(String message) => Get.snackbar(TTexts.error.tr, message, backgroundColor: TColors.error);

  /// Function to show info SnackBar
  static void showInfo(String message) => Get.snackbar(TTexts.info.tr, message, backgroundColor: TColors.info);
}
