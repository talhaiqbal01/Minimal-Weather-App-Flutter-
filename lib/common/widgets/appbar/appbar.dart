import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants/icons.dart';
import '../../../utils/device/device_utility.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {

  final Color? backgroundColor;
  final String? title;
  final List<Widget>? actions;
  final VoidCallback? onBackPress;
  final bool? showLeadingIcon;
  final Widget? leadingIcon;
  final bool? centerTitle;

  const TAppBar({
    super.key,
    this.backgroundColor,
    this.title,
    this.actions,
    this.onBackPress,
    this.showLeadingIcon,
    this.leadingIcon,
    this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    String appBarTitle = title ?? "";
    final textTheme = Theme.of(context).textTheme;

    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      title: Visibility(visible: appBarTitle.isNotEmpty, child:Text(appBarTitle, style: textTheme.titleLarge)),
      actions: actions,
      leading: Visibility(
        visible: showLeadingIcon ?? true,
        child: IconButton(
          onPressed: onBackPress ?? () => Get.back(),
          icon: leadingIcon ?? const Icon(TIcons.backButton),
        ),
      ),
      centerTitle: centerTitle ?? false,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
