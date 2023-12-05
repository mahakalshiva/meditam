import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shivam_s_application4/presentation/meditation_screen/models/meditation_model.dart';
part 'meditation_event.dart';
part 'meditation_state.dart';

/// A bloc that manages the state of a Meditation according to the event that is dispatched to it.
class MeditationBloc extends Bloc<MeditationEvent, MeditationState> {
  MeditationBloc(MeditationState initialState) : super(initialState) {
    on<MeditationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MeditationInitialEvent event,
    Emitter<MeditationState> emit,
  ) async {}
}
