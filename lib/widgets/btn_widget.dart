import 'package:flutter/material.dart';
import 'package:orderbus/config/app_colors.dart';
import 'package:orderbus/config/app_dimens.dart';
import 'package:orderbus/config/app_text_styles.dart';

Widget btn(String name){
  return Container(
              height: AppDimens.h50,
              width: AppDimens.w250,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppDimens.fixed30)
                    ),
                      primary: AppColors.c19104E, onPrimary: AppColors.c2196F3),
                  onPressed: () => {},
                  child: Text(
                    name,
                    style: AppTextStyles.robotoMedium18cA9A9AA,
                  )),
            );
          
}