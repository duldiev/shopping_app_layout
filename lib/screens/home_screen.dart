import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app_layout/shared/assets_name.dart';
import 'package:shopping_app_layout/widgets/home_app_bar.dart';
import 'package:shopping_app_layout/widgets/suggestion_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
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
            ),
          ],
        ),
      ),
    );
  }
}
