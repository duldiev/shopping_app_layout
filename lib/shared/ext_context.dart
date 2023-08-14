import 'package:flutter/material.dart';

extension BuildContextLocalization on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get bottomViewInset => MediaQuery.of(this).viewInsets.bottom;
}
