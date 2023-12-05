import '../models/fiftyfour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class FiftyfourItemWidget extends StatelessWidget {
  FiftyfourItemWidget(
    this.fiftyfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftyfourItemModel fiftyfourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.gray100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 170.v,
        width: 339.h,
        padding: EdgeInsets.symmetric(
          horizontal: 5.h,
          vertical: 20.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CustomElevatedButton(
              height: 39.v,
              width: 138.h,
              text: "lbl_watch_now".tr,
              margin: EdgeInsets.only(
                left: 25.h,
                bottom: 2.v,
              ),
              rightIcon: Container(
                margin: EdgeInsets.only(left: 8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgPlay,
                  height: 13.adaptSize,
                  width: 13.adaptSize,
                ),
              ),
              buttonStyle: CustomButtonStyles.fillOnPrimary,
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
              alignment: Alignment.bottomLeft,
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 121.v,
                width: 304.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 8.v,
                        width: 56.h,
                        margin: EdgeInsets.only(right: 52.h),
                        decoration: BoxDecoration(
                          color: appTheme.gray100,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        fiftyfourItemModelObj.meditationCounter!,
                        style: CustomTextStyles.headlineSmallAlegreyaOnPrimary,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 150.h,
                        margin: EdgeInsets.only(top: 35.v),
                        child: Text(
                          fiftyfourItemModelObj.techniquesBenefits!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleSmallBlack900,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: fiftyfourItemModelObj?.meditation,
                      height: 111.v,
                      width: 166.h,
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
