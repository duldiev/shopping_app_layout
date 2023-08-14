// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app_layout/shared/app_colors.dart';
import 'package:shopping_app_layout/views/category_view.dart';
import 'package:shopping_app_layout/views/suggestion_view.dart';
import 'package:shopping_app_layout/widgets/header_see_all.dart';
import 'package:shopping_app_layout/widgets/home_app_bar.dart';
import 'package:shopping_app_layout/widgets/nav_bar_item.dart';
import 'package:shopping_app_layout/widgets/search_engine.dart';

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
              const SuggestionView(),
              Gap(2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: const SearchEngine(),
              ),
              Gap(3.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: const HeaderSeeAll(),
              ),
              Gap(2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: const CategoryView(),
              ),
              Gap(2.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.background,
          boxShadow: [
            BoxShadow(
              color: AppColors.dark.withOpacity(0.2),
              spreadRadius: 10,
              blurRadius: 10,
              offset: Offset(0, 14),
            ),
          ],
        ),
        child: const SafeArea(
          child: Row(
            children: [
              Expanded(
                child: NavBarItem(
                  icon: FontAwesomeIcons.home,
                  selected: true,
                ),
              ),
              Expanded(
                child: NavBarItem(
                  icon: FontAwesomeIcons.couch,
                  selected: false,
                ),
              ),
              Expanded(
                child: NavBarItem(
                  icon: FontAwesomeIcons.shoppingBag,
                  selected: false,
                ),
              ),
              Expanded(
                child: NavBarItem(
                  icon: FontAwesomeIcons.solidHeart,
                  selected: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
