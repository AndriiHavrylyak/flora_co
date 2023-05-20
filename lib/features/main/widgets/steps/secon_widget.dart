import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_for_flora_co/core/common/widgets/button/cuctom_navigation_button.dart';
import 'package:test_for_flora_co/core/config/dimens.dart';
import 'package:test_for_flora_co/core/config/resources.dart';
import 'package:test_for_flora_co/core/config/thems.dart';
import 'package:test_for_flora_co/features/main/managers/main_bloc.dart';

import '../../../../core/config/colorz.dart';
import '../../../../core/constants/titles.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(builder: (context, state) {
      int initialItem =
          DateTime.now().year - (state.selectDate?.year ?? DateTime.now().year);
      return Stack(
        children: <Widget>[
          SvgPicture.asset(
            Img.secondPage,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.all(Margins.medium),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    Titles.logInYourDateOfBirth,
                    style: CustomTheme.textStyleTitleNunito,
                  ),
                  SizedBox(
                    height: Dimens.selectedYearHeightWidget,
                    child: ListWheelScrollView(
                      itemExtent: 60,
                      controller:
                          FixedExtentScrollController(initialItem: initialItem),
                      onSelectedItemChanged: (index) {
                        final year = DateTime.now().year - index;
                        context.read<MainBloc>().add(MainSelectYearEvent(year));
                      },
                      children: List<Widget>.generate(100, (int index) {
                        final year = DateTime.now().year - index;
                        final isSelected = index == initialItem;
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: Margins.medium),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colorz.colorForRowWidget
                                : Colors.transparent,
                            borderRadius:
                                BorderRadius.circular(BorderRadiuses.big),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            year.toString(),
                            style: CustomTheme.textStyleTextDateNunito,
                          ),
                        );
                      }),
                    ),
                  ),
                  CustomNavButton(
                      img: Img.arrowWhite,
                      text: Titles.next,
                      onPressedPrev: () {
                        BlocProvider.of<MainBloc>(context)
                            .add(MainPreviousPageEvent());
                      },
                      onPressedNext: () {
                        BlocProvider.of<MainBloc>(context)
                            .add(MainNextPageEvent());
                      }),
                ],
              ),
            ),
          )
        ],
      );
    });
  }
}
