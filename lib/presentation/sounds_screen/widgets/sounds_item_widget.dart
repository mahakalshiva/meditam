import '../models/sounds_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class SoundsItemWidget extends StatelessWidget {
  SoundsItemWidget(
    this.soundsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SoundsItemModel soundsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 3.v,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: soundsItemModelObj?.min,
            height: 65.adaptSize,
            width: 65.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 14.v,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  soundsItemModelObj.paintingForest!,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 1.v),
                Text(
                  soundsItemModelObj.listeningCounter!,
                  style: CustomTextStyles
                      .bodySmallAlegreyaSansOnPrimaryContainerLight,
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.75,
            child: Padding(
              padding: EdgeInsets.only(
                left: 55.h,
                top: 23.v,
                bottom: 24.v,
              ),
              child: Text(
                soundsItemModelObj.time!,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
