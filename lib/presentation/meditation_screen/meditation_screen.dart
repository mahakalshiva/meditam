import 'bloc/meditation_bloc.dart';
import 'models/meditation_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_title_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:shivam_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:shivam_s_application4/widgets/custom_bottom_bar.dart';
import 'package:shivam_s_application4/widgets/custom_elevated_button.dart';

class MeditationScreen extends StatelessWidget {
  MeditationScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MeditationBloc>(
      create: (context) => MeditationBloc(MeditationState(
        meditationModelObj: MeditationModel(),
      ))
        ..add(MeditationInitialEvent()),
      child: MeditationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MeditationBloc, MeditationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 41.h,
                vertical: 45.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_meditation".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: SizedBox(
                      width: 293.h,
                      child: Text(
                        "msg_guided_by_a_short".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles
                            .titleLargeOnPrimaryContainerRegular,
                      ),
                    ),
                  ),
                  SizedBox(height: 23.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgCharacterMeditating,
                    height: 217.v,
                    width: 283.h,
                  ),
                  SizedBox(height: 28.v),
                  Text(
                    "lbl_45_00".tr,
                    style: CustomTextStyles.displaySmallAlegreyaSans,
                  ),
                  SizedBox(height: 6.v),
                  CustomElevatedButton(
                    width: 186.h,
                    text: "lbl_start_now".tr,
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
