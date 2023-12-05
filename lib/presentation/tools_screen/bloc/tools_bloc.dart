import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shivam_s_application4/presentation/tools_screen/models/tools_model.dart';
part 'tools_event.dart';
part 'tools_state.dart';

/// A bloc that manages the state of a Tools according to the event that is dispatched to it.
class ToolsBloc extends Bloc<ToolsEvent, ToolsState> {
  ToolsBloc(ToolsState initialState) : super(initialState) {
    on<ToolsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ToolsInitialEvent event,
    Emitter<ToolsState> emit,
  ) async {}
}
