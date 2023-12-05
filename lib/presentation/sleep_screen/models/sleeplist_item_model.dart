import '../../../core/app_export.dart';

/// This class is used in the [sleeplist_item_widget] screen.
class SleeplistItemModel {
  SleeplistItemModel({
    this.hm,
    this.distance,
    this.sleep,
    this.id,
  }) {
    hm = hm ?? ImageConstant.imgGroupOnprimarycontainer12x11;
    distance = distance ?? "5h 30m";
    sleep = sleep ?? "Sleep";
    id = id ?? "";
  }

  String? hm;

  String? distance;

  String? sleep;

  String? id;
}
