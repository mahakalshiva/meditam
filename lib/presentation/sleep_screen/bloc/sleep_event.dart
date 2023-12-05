// ignore_for_file: must_be_immutable

part of 'sleep_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sleep widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SleepEvent extends Equatable {}

/// Event that is dispatched when the Sleep widget is first created.
class SleepInitialEvent extends SleepEvent {
  @override
  List<Object?> get props => [];
}
