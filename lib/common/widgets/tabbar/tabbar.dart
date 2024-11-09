import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/utils/constants/colors.dart';
import 'package:weather_app/utils/device/device_utility.dart';
import 'package:weather_app/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {

  final TabController? controller;
  final void Function(int)? onTap;
  final List<Widget> tabs;
  final bool? isScrollable;
  final TabAlignment? tabAlignment;

  const TTabBar({super.key, this.controller, this.onTap, required this.tabs, this.isScrollable, this.tabAlignment});

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);

    return Material(
      color: isDark ? TColors.darkBackground : TColors.lightBackground,
      child: TabBar(
        controller: controller,
        onTap: onTap,
        tabs: tabs,
        isScrollable: isScrollable ?? true,
        indicatorColor: TColors.primary,
        labelColor: isDark ? TColors.white : TColors.black,
        unselectedLabelColor: TColors.darkGrey,
        dragStartBehavior: DragStartBehavior.start,
        tabAlignment: tabAlignment ?? TabAlignment.start,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
