import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app_layout/screens/home_screen.dart';
import 'package:shopping_app_layout/shared/app_colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (_, __, ___) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background,
          fontFamily: 'Classic-Grotesque',
          primaryColor: AppColors.dark,
          dividerColor: AppColors.secondary,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: AppColors.dark,
            selectionColor: AppColors.dark.withOpacity(0.4),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
