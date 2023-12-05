import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shivam_s_application4/presentation/sound_screen/models/sound_model.dart';
part 'sound_event.dart';
part 'sound_state.dart';

/// A bloc that manages the state of a Sound according to the event that is dispatched to it.
class SoundBloc extends Bloc<SoundEvent, SoundState> {
  SoundBloc(SoundState initialState) : super(initialState) {
    on<SoundInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SoundInitialEvent event,
    Emitter<SoundState> emit,
  ) async {}
}
