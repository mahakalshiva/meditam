import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/feelings_item_model.dart';
import '../models/fiftyfour_item_model.dart';
import 'package:shivam_s_application4/presentation/main_screen/models/main_model.dart';
part 'main_event.dart';
part 'main_state.dart';

/// A bloc that manages the state of a Main according to the event that is dispatched to it.
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(MainState initialState) : super(initialState) {
    on<MainInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MainInitialEvent event,
    Emitter<MainState> emit,
  ) async {
    emit(state.copyWith(
        mainModelObj: state.mainModelObj?.copyWith(
      feelingsItemList: fillFeelingsItemList(),
      fiftyfourItemList: fillFiftyfourItemList(),
    )));
  }

  List<FeelingsItemModel> fillFeelingsItemList() {
    return [
      FeelingsItemModel(offer: ImageConstant.imgOffer, calm: "Calm"),
      FeelingsItemModel(offer: ImageConstant.imgGroup12, calm: "Relax"),
      FeelingsItemModel(offer: ImageConstant.imgUser, calm: "Focus")
    ];
  }

  List<FiftyfourItemModel> fillFiftyfourItemList() {
    return [
      FiftyfourItemModel(
          meditationCounter: "Meditation 101",
          techniquesBenefits: "Techniques, Benefits, and a Beginner’s How-To",
          meditation: ImageConstant.img2844687RemovebgPreview)
    ];
  }
}
