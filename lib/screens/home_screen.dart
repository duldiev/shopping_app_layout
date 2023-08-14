import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app_layout/shared/app_colors.dart';
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
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gap(2.h),
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
              Gap(2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: SearchBar(
                  hintText: 'Search',
                  leading: Icon(
                    FontAwesomeIcons.search,
                    color: AppColors.secondary,
                    size: 20,
                  ),
                  hintStyle: MaterialStatePropertyAll(
                    TextStyle(
                      fontSize: 16,
                      color: AppColors.secondary,
                    ),
                  ),
                  constraints: BoxConstraints.tight(Size.fromHeight(5.h)),
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: 4.w,
                      vertical: 0,
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(AppColors.light),
                  elevation: const MaterialStatePropertyAll(0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
