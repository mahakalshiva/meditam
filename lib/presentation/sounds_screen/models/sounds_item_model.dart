import '../../../core/app_export.dart';

/// This class is used in the [sounds_item_widget] screen.
class SoundsItemModel {
  SoundsItemModel({
    this.min,
    this.paintingForest,
    this.listeningCounter,
    this.time,
    this.id,
  }) {
    min = min ?? ImageConstant.imgRectangle2365x65;
    paintingForest = paintingForest ?? "Painting Forest";
    listeningCounter = listeningCounter ?? "59899 Listening";
    time = time ?? "20 Min";
    id = id ?? "";
  }

  String? min;

  String? paintingForest;

  String? listeningCounter;

  String? time;

  String? id;
}
