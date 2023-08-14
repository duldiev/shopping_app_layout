import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app_layout/shared/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.index,
    required this.reverse,
    required this.title,
    this.imagename,
  });

  final int index;
  final bool reverse;
  final String title;
  final String? imagename;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: index.isEven ? (reverse ? 250 : 150) : (!reverse ? 250 : 150),
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: AppColors.accessories,
        borderRadius: BorderRadius.circular(24),
        image: imagename != null
            ? DecorationImage(
                image: AssetImage(
                  'assets/images/$imagename',
                ),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
    );
  }
}
