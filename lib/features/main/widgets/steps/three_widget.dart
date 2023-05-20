import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_for_flora_co/core/config/resources.dart';
import 'package:test_for_flora_co/features/main/managers/main_bloc.dart';

import '../../../../core/common/widgets/button/cuctom_navigation_button.dart';
import '../../../../core/common/widgets/button/custom_button.dart';
import '../../../../core/common/widgets/result_widget.dart';
import '../../../../core/config/colorz.dart';
import '../../../../core/config/dimens.dart';
import '../../../../core/constants/titles.dart';

class TreeWidget extends StatelessWidget {
  const TreeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(builder: (context, state) {
      return Stack(
        children: <Widget>[
          SvgPicture.asset(
            Img.threePage,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ResultWidget( title: state.resultTitle,value: state.selectDate!.year.toString(),),
                CustomNavButton(
                    img: Img.arrowWhite,
                    text: Titles.next,
                    onPressedPrev: () {
                      BlocProvider.of<MainBloc>(context)
                          .add(MainPreviousPageEvent());
                    }),
              ],
            ),
          )
        ],
      );
    }
    );
  }
}