import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app_layout/shared/app_texts.dart';
import 'package:shopping_app_layout/shared/assets_name.dart';
import 'package:shopping_app_layout/widgets/category_card.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            children: List.generate(
              2,
              (index) => Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: CategoryCard(
                  index: index,
                  reverse: true,
                  title: AppTexts.categories1[index],
                  imagename: AssetsName.categories1[index],
                ),
              ),
            ),
          ),
        ),
        Gap(4.w),
        Expanded(
          child: Column(
            children: List.generate(
              2,
              (index) => Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: CategoryCard(
                  index: index,
                  reverse: false,
                  title: AppTexts.categories2[index],
                  imagename: AssetsName.categories2[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
