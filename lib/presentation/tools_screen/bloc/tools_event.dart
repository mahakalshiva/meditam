// ignore_for_file: must_be_immutable

part of 'tools_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Tools widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ToolsEvent extends Equatable {}

/// Event that is dispatched when the Tools widget is first created.
class ToolsInitialEvent extends ToolsEvent {
  @override
  List<Object?> get props => [];
}
