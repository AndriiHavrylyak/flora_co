import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/colorz.dart';
import '../../../config/dimens.dart';
import '../../../config/thems.dart';

class CustomButton extends StatelessWidget {
  final String img;
  final String text;
  final String description;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.img,
    required this.text,
    required this.description,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Margins.tiny),
      child: SizedBox(
        width: Dimens.buttonWidth,
        height: Dimens.buttonHeight,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colorz.colorForRowWidget),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(BorderRadiuses.gigantic),
                ))),
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: Margins.medium, right: Margins.medium),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(text, style: CustomTheme.textStyleTextBigNunito),
                        Text(description,
                            style: CustomTheme.textStyleTextMediumNunito),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: Margins.smaller,
                  ),
                  SvgPicture.asset(img)
                ],
              ),
            )),
      ),
    );
  }
}
