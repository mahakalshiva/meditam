import 'bloc/tools_bloc.dart';
import 'models/tools_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_title_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:shivam_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:shivam_s_application4/widgets/custom_bottom_bar.dart';

class ToolsScreen extends StatelessWidget {
  ToolsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ToolsBloc>(
      create: (context) => ToolsBloc(ToolsState(
        toolsModelObj: ToolsModel(),
      ))
        ..add(ToolsInitialEvent()),
      child: ToolsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ToolsBloc, ToolsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 45.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "lbl_tools".tr,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  _buildMoodJournalSection(context),
                  SizedBox(height: 20.v),
                  _buildTriggerPlanSection(context),
                  SizedBox(height: 20.v),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.only(left: 1.h),
                    color: theme.colorScheme.secondaryContainer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Container(
                      height: 115.v,
                      width: 153.h,
                      decoration: AppDecoration.fillSecondaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 21.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup9,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 11.v),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgFlag,
                                    height: 17.v,
                                    width: 12.h,
                                    margin: EdgeInsets.only(left: 1.h),
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "lbl_goal_trainer".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup38,
                            height: 17.v,
                            width: 19.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 8.v,
                              right: 13.h,
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
      },
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
  Widget _buildMoodJournalSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.blueGray60001,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Container(
              height: 115.v,
              width: 153.h,
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        bottom: 28.v,
                      ),
                      child: Text(
                        "lbl_mood_journal".tr,
                        style: CustomTextStyles.titleLargeBlack900,
                      ),
                    ),
                  ),
                  _buildFive(
                    context,
                    userImage: ImageConstant.imgGroupOnprimarycontainer,
                    triggerPlanLabel: "lbl_mood_journal".tr,
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: AppDecoration.fillTeal.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 15.v),
                Container(
                  width: 153.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 21.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup6,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 15.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup36,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(left: 2.h),
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "lbl_mood_booster".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
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
  Widget _buildTriggerPlanSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 10.h),
              decoration: AppDecoration.fillGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 15.v),
                  Container(
                    width: 153.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 21.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup8,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 15.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup37,
                          height: 17.v,
                          width: 16.h,
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "lbl_positive_notes".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10.h),
              decoration: AppDecoration.fillLightGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 15.v),
                  _buildFive(
                    context,
                    userImage: ImageConstant.imgCheckmark,
                    triggerPlanLabel: "lbl_trigger_plan".tr,
                  ),
                ],
              ),
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

  /// Common widget
  Widget _buildFive(
    BuildContext context, {
    required String userImage,
    required String triggerPlanLabel,
  }) {
    return Container(
      width: 153.h,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 19.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup5,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 17.v),
          CustomImageView(
            imagePath: userImage,
            height: 17.v,
            width: 18.h,
          ),
          SizedBox(height: 4.v),
          Text(
            triggerPlanLabel,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
          ),
        ],
      ),
    );
  }
}
