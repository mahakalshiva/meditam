import '../models/feelings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FeelingsItemWidget extends StatelessWidget {
  FeelingsItemWidget(
    this.feelingsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FeelingsItemModel feelingsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62.h,
      child: Column(
        children: [
          CustomIconButton(
            height: 65.v,
            width: 62.h,
            padding: EdgeInsets.all(13.h),
            child: CustomImageView(
              imagePath: feelingsItemModelObj?.offer,
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            feelingsItemModelObj.calm!,
            style: CustomTextStyles.bodySmallAlegreyaSansOnPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
