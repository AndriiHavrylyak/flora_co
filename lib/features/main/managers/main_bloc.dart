
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_flora_co/core/constants/titles.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<MainInitEvent>((event, emit) async {});

    on<MainNextPageEvent>((event, emit) async {
      if (state.stepPosition < 2) {
        emit(state.copyWith(stepPosition: state.stepPosition + 1));
      }
    });

    on<MainPreviousPageEvent>((event, emit) async {
      if (state.stepPosition > 0) {
        emit(state.copyWith(stepPosition: state.stepPosition - 1));
      }
    });

    on<MainSelectYearEvent>((event, emit) async {
      emit(state.copyWith(selectDate: DateTime(event.year)));
    });

    on<MainSelectTypeEvent>((event, emit) async {
      emit(state.copyWith(isTrackPeriod: event.isTrackPeriod));
    });

  }
}
