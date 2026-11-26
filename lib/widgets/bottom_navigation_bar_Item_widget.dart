import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

import '../utiles/app_colors.dart';

class BottomNavigationBarItemWidget extends StatelessWidget {
  const BottomNavigationBarItemWidget({
    super.key,
    required this.asset,
    this.isSelected = false,
  });

  final String asset;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final svg = SvgPicture.asset(
      'assets/images/${asset}_tab.svg',
      colorFilter: isSelected
          ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
          : null,
    );
    if (!isSelected) return svg;
    return Container(
      height: 34.h,
      width: 59.w,
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(66.r),
        color: AppColors.selectedTab,
      ),
      child: svg,
    );
  }
}

BottomNavigationBarItem buildNavItem({
  required String asset,
  required String label,
}) {
  return BottomNavigationBarItem(
    icon: BottomNavigationBarItemWidget(asset: asset),
    activeIcon: BottomNavigationBarItemWidget(asset: asset, isSelected: true),
    label: label,
  );
}
