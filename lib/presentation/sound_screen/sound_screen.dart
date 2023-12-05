import 'bloc/sound_bloc.dart';
import 'models/sound_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_title_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:shivam_s_application4/widgets/app_bar/custom_app_bar.dart';

class SoundScreen extends StatelessWidget {
  const SoundScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SoundBloc>(
      create: (context) => SoundBloc(SoundState(
        soundModelObj: SoundModel(),
      ))
        ..add(SoundInitialEvent()),
      child: SoundScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SoundBloc, SoundState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 32.h,
                vertical: 35.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 8.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgAlbumArt,
                    height: 250.adaptSize,
                    width: 250.adaptSize,
                    radius: BorderRadius.circular(
                      125.h,
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 35.h),
                      child: Text(
                        "lbl_painting_forest".tr,
                        style: theme.textTheme.displaySmall,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "msg_by_painting_with".tr,
                      style: CustomTextStyles.headlineSmallOnPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 48.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgTime,
                    height: 50.v,
                    width: 309.h,
                  ),
                  SizedBox(height: 26.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupOnprimarycontainer75x303,
                    height: 75.v,
                    width: 303.h,
                  ),
                  SizedBox(height: 39.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgNavOnprimarycontainer,
                    height: 25.v,
                    width: 226.h,
                  ),
                ],
              ),
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
}
