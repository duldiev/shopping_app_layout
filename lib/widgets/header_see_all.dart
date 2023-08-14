import 'package:flutter/material.dart';
import 'package:shopping_app_layout/shared/app_colors.dart';

class HeaderSeeAll extends StatelessWidget {
  const HeaderSeeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Categories',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'See all',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.gray,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
