import '../../../core/app_export.dart';

/// This class is used in the [feelings_item_widget] screen.
class FeelingsItemModel {
  FeelingsItemModel({
    this.offer,
    this.calm,
    this.id,
  }) {
    offer = offer ?? ImageConstant.imgOffer;
    calm = calm ?? "Calm";
    id = id ?? "";
  }

  String? offer;

  String? calm;

  String? id;
}
