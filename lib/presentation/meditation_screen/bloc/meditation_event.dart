// ignore_for_file: must_be_immutable

part of 'meditation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Meditation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MeditationEvent extends Equatable {}

/// Event that is dispatched when the Meditation widget is first created.
class MeditationInitialEvent extends MeditationEvent {
  @override
  List<Object?> get props => [];
}
