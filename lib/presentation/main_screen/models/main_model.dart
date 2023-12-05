// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'feelings_item_model.dart';
import 'fiftyfour_item_model.dart';

/// This class defines the variables used in the [main_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MainModel extends Equatable {
  MainModel({
    this.feelingsItemList = const [],
    this.fiftyfourItemList = const [],
  }) {}

  List<FeelingsItemModel> feelingsItemList;

  List<FiftyfourItemModel> fiftyfourItemList;

  MainModel copyWith({
    List<FeelingsItemModel>? feelingsItemList,
    List<FiftyfourItemModel>? fiftyfourItemList,
  }) {
    return MainModel(
      feelingsItemList: feelingsItemList ?? this.feelingsItemList,
      fiftyfourItemList: fiftyfourItemList ?? this.fiftyfourItemList,
    );
  }

  @override
  List<Object?> get props => [feelingsItemList, fiftyfourItemList];
}
