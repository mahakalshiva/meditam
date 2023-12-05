// ignore_for_file: must_be_immutable

part of 'sound_bloc.dart';

/// Represents the state of Sound in the application.
class SoundState extends Equatable {
  SoundState({this.soundModelObj});

  SoundModel? soundModelObj;

  @override
  List<Object?> get props => [
        soundModelObj,
      ];
  SoundState copyWith({SoundModel? soundModelObj}) {
    return SoundState(
      soundModelObj: soundModelObj ?? this.soundModelObj,
    );
  }
}
