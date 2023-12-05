// ignore_for_file: must_be_immutable

part of 'profile_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ProfileTabContainer widget is first created.
class ProfileTabContainerInitialEvent extends ProfileTabContainerEvent {
  @override
  List<Object?> get props => [];
}
