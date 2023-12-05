// ignore_for_file: must_be_immutable

part of 'sounds_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sounds widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SoundsEvent extends Equatable {}

/// Event that is dispatched when the Sounds widget is first created.
class SoundsInitialEvent extends SoundsEvent {
  @override
  List<Object?> get props => [];
}
