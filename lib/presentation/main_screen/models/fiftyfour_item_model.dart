import '../../../core/app_export.dart';

/// This class is used in the [fiftyfour_item_widget] screen.
class FiftyfourItemModel {
  FiftyfourItemModel({
    this.meditationCounter,
    this.techniquesBenefits,
    this.meditation,
    this.id,
  }) {
    meditationCounter = meditationCounter ?? "Meditation 101";
    techniquesBenefits =
        techniquesBenefits ?? "Techniques, Benefits, and a Beginner’s How-To";
    meditation = meditation ?? ImageConstant.img2844687RemovebgPreview;
    id = id ?? "";
  }

  String? meditationCounter;

  String? techniquesBenefits;

  String? meditation;

  String? id;
}
