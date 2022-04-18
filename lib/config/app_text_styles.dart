import 'package:flutter/rendering.dart';
import 'package:orderbus/config/app_colors.dart';
import 'package:orderbus/config/app_dimens.dart';

class AppTextStyles {
  static const String openSansBold = 'OpenSans-Bold';
  static const String openSansRegular = 'OpenSans-Regular';
  static const String robotoBold = 'Roboto-Bold';
  static const String robotoItalic = 'Roboto-Italic';
  static const String robotoMedium = 'Roboto-Medium';

  static final normal10cFFFFFF = TextStyle(
    fontFamily: openSansBold,
    fontSize: AppDimens.sp10,
    color: AppColors.cFFFFFF,
  );

  static final robotoItalic24c19104e = TextStyle(
    fontFamily: robotoItalic,
    fontSize: AppDimens.sp24,
    color: AppColors.c19104E,
  );
  static final robotoMedium18cA9A9AA = TextStyle(
    fontFamily: robotoMedium,
    fontSize: AppDimens.sp18,
    color: AppColors.cA9A9AA,
  );
  static final robotoMedium18c19104E = TextStyle(
    fontFamily: robotoMedium,
    fontSize: AppDimens.sp18,
    color: AppColors.c19104E,
  );
  static final robotoMedium12cA9A9AA = TextStyle(
    fontFamily: robotoMedium,
    fontSize: AppDimens.sp18,
    color: AppColors.cA9A9AA,
  );
  static final robotoMedium16c19104E = TextStyle(
    fontFamily: robotoMedium,
    fontSize: AppDimens.sp18,
    color: AppColors.c19104E,
  );
}
