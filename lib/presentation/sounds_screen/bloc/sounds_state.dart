// ignore_for_file: must_be_immutable

part of 'sounds_bloc.dart';

/// Represents the state of Sounds in the application.
class SoundsState extends Equatable {
  SoundsState({this.soundsModelObj});

  SoundsModel? soundsModelObj;

  @override
  List<Object?> get props => [
        soundsModelObj,
      ];
  SoundsState copyWith({SoundsModel? soundsModelObj}) {
    return SoundsState(
      soundsModelObj: soundsModelObj ?? this.soundsModelObj,
    );
  }
}
