import '../sounds_screen/widgets/sounds_item_widget.dart';
import 'bloc/sounds_bloc.dart';
import 'models/sounds_item_model.dart';
import 'models/sounds_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_title_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:shivam_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:shivam_s_application4/widgets/custom_bottom_bar.dart';
import 'package:shivam_s_application4/widgets/custom_elevated_button.dart';

class SoundsScreen extends StatelessWidget {
  SoundsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SoundsBloc>(
      create: (context) => SoundsBloc(SoundsState(
        soundsModelObj: SoundsModel(),
      ))
        ..add(SoundsInitialEvent()),
      child: SoundsScreen(),
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
            horizontal: 18.h,
            vertical: 30.v,
          ),
          child: Column(
            children: [
              _buildRelaxSounds(context),
              SizedBox(height: 40.v),
              _buildSounds(context),
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
  Widget _buildRelaxSounds(BuildContext context) {
    return SizedBox(
      height: 195.v,
      width: 339.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle23,
            height: 195.v,
            width: 339.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 37.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_relax_sounds".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                  Opacity(
                    opacity: 0.9,
                    child: SizedBox(
                      width: 187.h,
                      child: Text(
                        "msg_sometimes_the_most".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleSmallOnPrimaryContainer_1
                            .copyWith(
                          height: 1.20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  CustomElevatedButton(
                    height: 39.v,
                    width: 138.h,
                    text: "lbl_play_now".tr,
                    rightIcon: Container(
                      margin: EdgeInsets.only(left: 4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 13.v,
                        width: 12.h,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                    buttonTextStyle: CustomTextStyles.titleSmallBlack900,
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
  Widget _buildSounds(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<SoundsBloc, SoundsState, SoundsModel?>(
        selector: (state) => state.soundsModelObj,
        builder: (context, soundsModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 14.v,
              );
            },
            itemCount: soundsModelObj?.soundsItemList.length ?? 0,
            itemBuilder: (context, index) {
              SoundsItemModel model =
                  soundsModelObj?.soundsItemList[index] ?? SoundsItemModel();
              return SoundsItemWidget(
                model,
              );
            },
          );
        },
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
