import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app_layout/shared/assets_name.dart';
import 'package:shopping_app_layout/widgets/suggestion_card.dart';

class SuggestionView extends StatelessWidget {
  const SuggestionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100.w,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        itemBuilder: (context, index) => SuggestionCard(
          index: index,
          imageName: AssetsName.images[index],
        ),
        separatorBuilder: (context, index) => Gap(2.w),
        itemCount: 6,
      ),
    );
  }
}
