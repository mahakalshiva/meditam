// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sounds_item_model.dart';

/// This class defines the variables used in the [sounds_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SoundsModel extends Equatable {
  SoundsModel({this.soundsItemList = const []}) {}

  List<SoundsItemModel> soundsItemList;

  SoundsModel copyWith({List<SoundsItemModel>? soundsItemList}) {
    return SoundsModel(
      soundsItemList: soundsItemList ?? this.soundsItemList,
    );
  }

  @override
  List<Object?> get props => [soundsItemList];
}
