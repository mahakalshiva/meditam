// ignore_for_file: must_be_immutable

part of 'tools_bloc.dart';

/// Represents the state of Tools in the application.
class ToolsState extends Equatable {
  ToolsState({this.toolsModelObj});

  ToolsModel? toolsModelObj;

  @override
  List<Object?> get props => [
        toolsModelObj,
      ];
  ToolsState copyWith({ToolsModel? toolsModelObj}) {
    return ToolsState(
      toolsModelObj: toolsModelObj ?? this.toolsModelObj,
    );
  }
}
