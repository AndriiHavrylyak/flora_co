import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_for_flora_co/core/config/dimens.dart';
import 'package:test_for_flora_co/core/config/resources.dart';

import '../../../../core/common/widgets/button/custom_button.dart';
import '../../../../core/constants/titles.dart';
import '../../managers/main_bloc.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(builder: (context, state) {
      return Stack(
        children: <Widget>[
          SvgPicture.asset(
            Img.firstPage,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                CustomButton(
                    img: Img.arrowBlack,
                    text: Titles.trackMyPeriod,
                    description: Titles.contraceptionAndWellbeing,
                    onPressed: () {
                      BlocProvider.of<MainBloc>(context)
                          .add(const MainSelectTypeEvent(true));
                      BlocProvider.of<MainBloc>(context)
                          .add(MainNextPageEvent());
                    }),
                const SizedBox(
                  height: Margins.bigger,
                ),
                CustomButton(
                  img: Img.arrowBlack,
                  text: Titles.getPregnant,
                  description: Titles.learnAboutReproductiveHealth,
                  onPressed: () {
                    BlocProvider.of<MainBloc>(context)
                        .add(const MainSelectTypeEvent(false));
                    BlocProvider.of<MainBloc>(context).add(MainNextPageEvent());
                  },
                ),
                const Spacer(),
              ],
            ),
          )
        ],
      );
    });
  }
}
