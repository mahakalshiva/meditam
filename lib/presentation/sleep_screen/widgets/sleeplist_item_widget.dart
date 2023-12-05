import '../models/sleeplist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class SleeplistItemWidget extends StatelessWidget {
  SleeplistItemWidget(
    this.sleeplistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SleeplistItemModel sleeplistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 100.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: sleeplistItemModelObj?.hm,
            height: 12.v,
            width: 11.h,
          ),
          SizedBox(height: 22.v),
          Text(
            sleeplistItemModelObj.distance!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 4.v),
          Text(
            sleeplistItemModelObj.sleep!,
            style: CustomTextStyles.bodySmallAlegreyaSansOnPrimaryContainer,
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
