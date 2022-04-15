import 'package:flutter/material.dart';
import 'package:orderbus/config/app_dimens.dart';
import 'package:orderbus/config/app_images.dart';
import 'package:orderbus/config/app_text_styles.dart';
import 'package:orderbus/generated/l10n.dart';
import 'package:orderbus/widgets/btn_widget.dart';

void main() {
  runApp(IntroScreen());
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Image.asset(AppImages.bgIntro),
              margin: EdgeInsets.only(top: AppDimens.h120, right: AppDimens.r5),
            ),
            Container(
              child: Text(
                S.current.intro,
                style: AppTextStyles.robotoItalic24c19104e,
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.all(AppDimens.fixed40),
            ),
            Container(
              child: Text(
                S.current.intro2,
                style: AppTextStyles.robotoMedium18cA9A9AA,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: AppDimens.fixed70,
            ),
            btn(S.current.btnIntro),
            ]
        ),
      ),
    );
  }
}
