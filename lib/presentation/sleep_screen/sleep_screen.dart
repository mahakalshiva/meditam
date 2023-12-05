import '../sleep_screen/widgets/sleeplist_item_widget.dart';
import 'bloc/sleep_bloc.dart';
import 'models/sleep_model.dart';
import 'models/sleeplist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_title_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:shivam_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:shivam_s_application4/widgets/custom_bottom_bar.dart';

class SleepScreen extends StatelessWidget {
  SleepScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SleepBloc>(
      create: (context) => SleepBloc(SleepState(
        sleepModelObj: SleepModel(),
      ))
        ..add(SleepInitialEvent()),
      child: SleepScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 49.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "lbl_sleep_session".tr,
                  style: theme.textTheme.displaySmall,
                ),
              ),
              SizedBox(height: 19.v),
              _buildSleepList(context),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "lbl_bedtime".tr,
                  style: theme.textTheme.displaySmall,
                ),
              ),
              SizedBox(height: 32.v),
              _buildEightyNine(context),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 46.h,
                    right: 25.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_jan".tr,
                        style: CustomTextStyles.bodySmallSFProTextGray50001,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Text(
                          "lbl_feb".tr,
                          style: CustomTextStyles.bodySmallSFProTextGray50001,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.h),
                        child: Text(
                          "lbl_mar".tr,
                          style: CustomTextStyles.bodySmallSFProTextGray50001,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.h),
                        child: Text(
                          "lbl_apr".tr,
                          style: CustomTextStyles.bodySmallSFProTextGray50001,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Text(
                          "lbl_may".tr,
                          style: CustomTextStyles.bodySmallSFProTextGray50001,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.h),
                        child: Text(
                          "lbl_jun".tr,
                          style: CustomTextStyles.bodySmallSFProTextGray50001,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 74.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHamburgerOnprimarycontainer,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 19.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgLogoOnprimarycontainer,
      ),
      actions: [
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse235x35,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSleepList(BuildContext context) {
    return SizedBox(
      height: 163.v,
      child: BlocSelector<SleepBloc, SleepState, SleepModel?>(
        selector: (state) => state.sleepModelObj,
        builder: (context, sleepModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 1.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 13.h,
              );
            },
            itemCount: sleepModelObj?.sleeplistItemList.length ?? 0,
            itemBuilder: (context, index) {
              SleeplistItemModel model =
                  sleepModelObj?.sleeplistItemList[index] ??
                      SleeplistItemModel();
              return SleeplistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 19.h,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "lbl_800".tr,
                style: CustomTextStyles.bodySmallSFProTextGray50001,
              ),
              SizedBox(height: 22.v),
              Text(
                "lbl_600".tr,
                style: CustomTextStyles.bodySmallSFProTextGray50001,
              ),
              SizedBox(height: 22.v),
              Text(
                "lbl_400".tr,
                style: CustomTextStyles.bodySmallSFProTextGray50001,
              ),
              SizedBox(height: 22.v),
              Text(
                "lbl_200".tr,
                style: CustomTextStyles.bodySmallSFProTextGray50001,
              ),
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "lbl_0".tr,
                  style: CustomTextStyles.bodySmallSFProTextGray50001,
                ),
              ),
            ],
          ),
          Container(
            height: 154.v,
            width: 272.h,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 3.v,
              bottom: 4.v,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGraphLines,
                  height: 154.v,
                  width: 272.h,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGraphLinesLightGreen300,
                  height: 56.v,
                  width: 257.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 36.v),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 17.h,
                      bottom: 3.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.all(11.h),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgTooltip,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_27_632".tr,
                                style: CustomTextStyles
                                    .titleSmallSFProTextOnPrimary,
                              ),
                              SizedBox(height: 3.v),
                              Text(
                                "lbl_may".tr,
                                style:
                                    CustomTextStyles.bodySmallSFProTextGray700,
                              ),
                              SizedBox(height: 3.v),
                            ],
                          ),
                        ),
                        SizedBox(height: 3.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFacebook,
                          height: 65.v,
                          width: 14.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
