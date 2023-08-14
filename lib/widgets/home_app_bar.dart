import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app_layout/shared/app_colors.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0.3,
      elevation: 0,
      backgroundColor: AppColors.background,
      toolbarHeight: 8.h,
      leading: Padding(
        padding: EdgeInsets.only(left: 4.w),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/avatar.jpeg',
                width: 12.w,
                height: 12.w,
                fit: BoxFit.cover,
              ),
            ),
            Gap(3.w),
            RichText(
              text: TextSpan(
                text: 'Hello,',
                children: [
                  TextSpan(
                    text: 'Mark',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.dark,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.dark,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Transform.scale(
          scale: 0.6,
          alignment: Alignment.centerRight,
          child: Container(
            height: 2.h,
            width: 30.w,
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 4.w),
            decoration: BoxDecoration(
              color: AppColors.dark,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '4',
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.background,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Gap(4.w),
                Icon(
                  FontAwesomeIcons.bell,
                  color: AppColors.background,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ],
      leadingWidth: 80.w,
    );
  }

  @override
  Size get preferredSize => Size(100.w, 8.h);
}
