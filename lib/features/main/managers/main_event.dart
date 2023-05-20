part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();
}

class MainInitEvent extends MainEvent {
  @override
  List<Object> get props => [];
}

class MainNextPageEvent extends MainEvent {
  @override
  List<Object> get props => [];
}

class MainPreviousPageEvent extends MainEvent {
  @override
  List<Object> get props => [];
}

class MainSelectYearEvent extends MainEvent {
  final int year;

  const MainSelectYearEvent(this.year);

  @override
  List<Object> get props => [year];
}


class MainSelectTypeEvent extends MainEvent {
  final bool isTrackPeriod;

  const MainSelectTypeEvent(this.isTrackPeriod);

  @override
  List<Object> get props => [isTrackPeriod];
}