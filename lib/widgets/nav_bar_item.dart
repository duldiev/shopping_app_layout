import 'dart:math';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app_layout/shared/app_colors.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.icon,
    required this.selected,
  });

  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: selected ? ShadowPainter() : null,
      child: Container(
        height: 65,
        alignment: Alignment.bottomCenter,
        color: AppColors.background,
        padding: EdgeInsets.only(bottom: 1.h),
        child: CustomPaint(
          painter: selected ? NavBarItemPainter() : null,
          child: Container(
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: selected ? AppColors.dark : null,
              shape: BoxShape.circle,
            ),
            child: Transform.translate(
              offset: const Offset(-1, 0),
              child: Icon(
                icon,
                color: selected ? AppColors.white : AppColors.secondary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarItemPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = AppColors.background;
    var rect = Rect.fromCenter(
      center: const Offset(30, 30),
      width: 90,
      height: 90,
    );
    canvas.drawArc(rect, pi, pi, true, paint);
  }

  @override
  bool shouldRepaint(NavBarItemPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(NavBarItemPainter oldDelegate) => false;
}

class ShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = AppColors.dark;
    paint.maskFilter = const MaskFilter.blur(
      BlurStyle.normal,
      18,
    );

    var rect = Rect.fromCenter(
      center: const Offset(50, 20),
      width: 50,
      height: 40 / 1.5,
    );

    canvas.drawArc(rect, pi, pi, false, paint);
  }

  static double convertRadiusToSigma(double radius) {
    return radius * 0.57735 + 0.5;
  }

  @override
  bool shouldRepaint(ShadowPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(ShadowPainter oldDelegate) => false;
}
