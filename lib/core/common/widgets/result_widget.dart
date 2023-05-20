import 'package:flutter/material.dart';

import '../../config/colorz.dart';
import '../../config/dimens.dart';
import '../../config/thems.dart';

class ResultWidget extends StatelessWidget {
  final String title;
  final String value;

  const ResultWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Margins.tiny),
      child: SizedBox(
        width: Dimens.buttonWidth,
        height: Dimens.buttonHeight,
        child: Container(
            decoration: BoxDecoration(
              color: Colorz.colorForRowWidget,
              borderRadius: BorderRadius.circular(BorderRadiuses.gigantic),
            ),
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
                        Text(title, style: CustomTheme.textStyleTextBigNunito),
                        Text(value,
                            style: CustomTheme.textStyleTextMediumNunito),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
