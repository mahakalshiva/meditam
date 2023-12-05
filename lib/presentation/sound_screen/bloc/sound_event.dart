// ignore_for_file: must_be_immutable

part of 'sound_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sound widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SoundEvent extends Equatable {}

/// Event that is dispatched when the Sound widget is first created.
class SoundInitialEvent extends SoundEvent {
  @override
  List<Object?> get props => [];
}
