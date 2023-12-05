import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sounds_item_model.dart';
import 'package:shivam_s_application4/presentation/sounds_screen/models/sounds_model.dart';
part 'sounds_event.dart';
part 'sounds_state.dart';

/// A bloc that manages the state of a Sounds according to the event that is dispatched to it.
class SoundsBloc extends Bloc<SoundsEvent, SoundsState> {
  SoundsBloc(SoundsState initialState) : super(initialState) {
    on<SoundsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SoundsInitialEvent event,
    Emitter<SoundsState> emit,
  ) async {
    emit(state.copyWith(
        soundsModelObj: state.soundsModelObj?.copyWith(
      soundsItemList: fillSoundsItemList(),
    )));
  }

  List<SoundsItemModel> fillSoundsItemList() {
    return [
      SoundsItemModel(
          min: ImageConstant.imgRectangle2365x65,
          paintingForest: "Painting Forest",
          listeningCounter: "59899 Listening",
          time: "20 Min"),
      SoundsItemModel(
          min: ImageConstant.imgRectangle25,
          paintingForest: "Mountaineers",
          listeningCounter: "45697 Listening",
          time: "15 Min"),
      SoundsItemModel(
          min: ImageConstant.imgRectangle26,
          paintingForest: "Lovely Deserts",
          listeningCounter: "9428\r Listening",
          time: "39 Min"),
      SoundsItemModel(
          min: ImageConstant.imgRectangle28,
          paintingForest: "The Hill Sides",
          listeningCounter: "52599 Listening",
          time: "50 Min")
    ];
  }
}
