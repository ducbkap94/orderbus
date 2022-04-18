import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderbus/config/app_colors.dart';
import 'package:orderbus/config/app_dimens.dart';
import 'package:orderbus/config/app_images.dart';
import 'package:orderbus/config/app_text_styles.dart';
import 'package:provider/provider.dart';
import 'package:orderbus/providers/store.dart';
import 'package:orderbus/widgets/product_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<Store>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(AppImages.menu),
          onPressed: () => {},
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Image.asset(AppImages.avatar),
            color: AppColors.c19104E,
          )
        ],
      ),
    );
  }
}
