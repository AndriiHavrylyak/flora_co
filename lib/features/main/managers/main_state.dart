part of 'main_bloc.dart';

class MainState extends Equatable {
  final bool isProgress;
  final int stepPosition;
  final DateTime? selectDate;
  final bool? isTrackPeriod;

  const MainState({
    this.isProgress = false,
    this.stepPosition = 0,
    this.selectDate,
    this.isTrackPeriod,
  });

  MainState copyWith({
    bool? isProgress,
    int? stepPosition,
    DateTime? selectDate,
    bool? isTrackPeriod,
  }) {
    return MainState(
      isProgress: isProgress ?? this.isProgress,
      stepPosition: stepPosition ?? this.stepPosition,
      selectDate: selectDate ?? this.selectDate,
      isTrackPeriod: isTrackPeriod ?? this.isTrackPeriod,
    );
  }

  String get resultTitle {
    return isTrackPeriod == true ? Titles.trackMyPeriod : Titles.getPregnant;
  }

  @override
  List<Object?> get props => [
        isProgress,
        stepPosition,
        selectDate,
        isTrackPeriod,
      ];
}
