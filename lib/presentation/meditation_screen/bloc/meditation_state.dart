// ignore_for_file: must_be_immutable

part of 'meditation_bloc.dart';

/// Represents the state of Meditation in the application.
class MeditationState extends Equatable {
  MeditationState({this.meditationModelObj});

  MeditationModel? meditationModelObj;

  @override
  List<Object?> get props => [
        meditationModelObj,
      ];
  MeditationState copyWith({MeditationModel? meditationModelObj}) {
    return MeditationState(
      meditationModelObj: meditationModelObj ?? this.meditationModelObj,
    );
  }
}
