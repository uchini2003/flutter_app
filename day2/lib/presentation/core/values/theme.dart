import 'package:flutter/material.dart';

import 'colors.dart';

final theme = ThemeData(
  primaryColor: AppColors.primaryColor,
  primaryColorDark: AppColors.primaryColorDark,
  fontFamily: 'Tondo',
  colorScheme: const ColorScheme.light().copyWith(
    primary: AppColors.primaryColor,
    secondary: AppColors.secondaryColor,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: AppColors.primaryColor,
    circularTrackColor: AppColors.primaryColor,
    linearTrackColor: AppColors.primaryColor,
  ),
);