import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app_layout/shared/app_colors.dart';
import 'package:shopping_app_layout/shared/ext_context.dart';

class SearchEngine extends StatelessWidget {
  const SearchEngine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: 'Search',
      leading: Transform.translate(
        offset: Offset(0, context.height < 800 ? -4 : 0),
        child: Icon(
          FontAwesomeIcons.search,
          color: AppColors.secondary,
          size: 20,
        ),
      ),
      hintStyle: MaterialStatePropertyAll(
        TextStyle(
          fontSize: 16,
          color: AppColors.secondary,
        ),
      ),
      constraints: BoxConstraints.tight(Size.fromHeight(6.h)),
      padding: MaterialStatePropertyAll(EdgeInsets.only(
        left: 4.w,
        right: 4.w,
        top: context.height < 800 ? 10 : 0,
      )),
      backgroundColor: MaterialStatePropertyAll(AppColors.light),
      elevation: const MaterialStatePropertyAll(0),
    );
  }
}
