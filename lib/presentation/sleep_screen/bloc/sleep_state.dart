// ignore_for_file: must_be_immutable

part of 'sleep_bloc.dart';

/// Represents the state of Sleep in the application.
class SleepState extends Equatable {
  SleepState({this.sleepModelObj});

  SleepModel? sleepModelObj;

  @override
  List<Object?> get props => [
        sleepModelObj,
      ];
  SleepState copyWith({SleepModel? sleepModelObj}) {
    return SleepState(
      sleepModelObj: sleepModelObj ?? this.sleepModelObj,
    );
  }
}
