import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_flora_co/features/main/widgets/steps/first_widget.dart';
import 'package:test_for_flora_co/features/main/widgets/steps/secon_widget.dart';
import 'package:test_for_flora_co/features/main/widgets/steps/three_widget.dart';

import '../managers/main_bloc.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
            body: Column(
          children: [
            Expanded(
                child: StepSwitchPagesWidget(
              pageIndex: state.stepPosition,
            )),
          ],
        ));
      },
    );
  }
}

class StepSwitchPagesWidget extends StatelessWidget {
  final int pageIndex;

  const StepSwitchPagesWidget({
    super.key,
    required this.pageIndex,
  });

  @override
  Widget build(BuildContext context) {
    switch (pageIndex) {
      case 0:
        return const FirstWidget();
      case 1:
        return const SecondWidget();
      case 2:
        return const TreeWidget();
      default:
        return const FirstWidget();
    }
  }
}
