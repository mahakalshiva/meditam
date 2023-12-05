import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleeplist_item_model.dart';
import 'package:shivam_s_application4/presentation/sleep_screen/models/sleep_model.dart';
part 'sleep_event.dart';
part 'sleep_state.dart';

/// A bloc that manages the state of a Sleep according to the event that is dispatched to it.
class SleepBloc extends Bloc<SleepEvent, SleepState> {
  SleepBloc(SleepState initialState) : super(initialState) {
    on<SleepInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SleepInitialEvent event,
    Emitter<SleepState> emit,
  ) async {
    emit(state.copyWith(
        sleepModelObj: state.sleepModelObj?.copyWith(
      sleeplistItemList: fillSleeplistItemList(),
    )));
  }

  List<SleeplistItemModel> fillSleeplistItemList() {
    return [
      SleeplistItemModel(
          hm: ImageConstant.imgGroupOnprimarycontainer12x11,
          distance: "5h 30m",
          sleep: "Sleep"),
      SleeplistItemModel(
          hm: ImageConstant.imgGroup39, distance: "1h 10m", sleep: "Deep"),
      SleeplistItemModel(
          hm: ImageConstant.imgGroupOnprimarycontainer12x12,
          distance: "3h 30m",
          sleep: "Quality")
    ];
  }
}
