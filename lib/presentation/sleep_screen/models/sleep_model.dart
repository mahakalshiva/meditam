// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleeplist_item_model.dart';

/// This class defines the variables used in the [sleep_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SleepModel extends Equatable {
  SleepModel({this.sleeplistItemList = const []}) {}

  List<SleeplistItemModel> sleeplistItemList;

  SleepModel copyWith({List<SleeplistItemModel>? sleeplistItemList}) {
    return SleepModel(
      sleeplistItemList: sleeplistItemList ?? this.sleeplistItemList,
    );
  }

  @override
  List<Object?> get props => [sleeplistItemList];
}
