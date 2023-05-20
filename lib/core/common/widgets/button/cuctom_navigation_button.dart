import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/colorz.dart';
import '../../../config/dimens.dart';
import '../../../config/fonts.dart';
import '../../../config/thems.dart';

class CustomNavButton extends StatelessWidget {
  final String img;
  final String text;
  final VoidCallback? onPressedNext;
  final VoidCallback? onPressedPrev;

  const CustomNavButton({
    super.key,
    required this.img,
    required this.text,
    this.onPressedNext,
    this.onPressedPrev,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Margins.tiny),
      child: SizedBox(
        width: Dimens.buttonNavWidth,
        height: Dimens.buttonNavHeight,
        child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: Gradients.gradientsNawButton,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(BorderRadiuses.ginormous),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: Margins.medium, right: Margins.medium),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  onPressedPrev != null
                      ? InkWell(
                          onTap: onPressedPrev,
                          child: Transform.scale(
                            scale: -1.0,
                            child: SvgPicture.asset(img),
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    width: Margins.smaller,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(text, style: CustomTheme.textStyleSimple),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: Margins.smaller,
                  ),
                  onPressedNext != null
                      ? InkWell(
                          onTap: onPressedNext,
                          child: SvgPicture.asset(img),
                        )
                      : Container()
                ],
              ),
            )),
      ),
    );
  }
}
