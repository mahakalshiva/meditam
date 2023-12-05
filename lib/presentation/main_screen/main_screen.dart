import '../main_screen/widgets/feelings_item_widget.dart';
import '../main_screen/widgets/fiftyfour_item_widget.dart';
import 'bloc/main_bloc.dart';
import 'models/feelings_item_model.dart';
import 'models/fiftyfour_item_model.dart';
import 'models/main_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_title_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:shivam_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:shivam_s_application4/widgets/custom_bottom_bar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MainBloc>(
      create: (context) => MainBloc(MainState(
        mainModelObj: MainModel(),
      ))
        ..add(MainInitialEvent()),
      child: MainScreen(),
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
            vertical: 29.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "msg_welcome_back_afreen".tr,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "msg_how_are_you_feeling".tr,
                  style: CustomTextStyles.titleLargeOnPrimaryContainerRegular22,
                ),
              ),
              SizedBox(height: 25.v),
              _buildFeelings(context),
              SizedBox(height: 22.v),
              _buildFiftyFour(context),
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
        imagePath: ImageConstant.imgHamburger,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 19.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgLogo,
      ),
      actions: [
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse2,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFeelings(BuildContext context) {
    return SizedBox(
      height: 85.v,
      child: BlocSelector<MainBloc, MainState, MainModel?>(
        selector: (state) => state.mainModelObj,
        builder: (context, mainModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 25.h,
              );
            },
            itemCount: mainModelObj?.feelingsItemList.length ?? 0,
            itemBuilder: (context, index) {
              FeelingsItemModel model =
                  mainModelObj?.feelingsItemList[index] ?? FeelingsItemModel();
              return FeelingsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyFour(BuildContext context) {
    return BlocSelector<MainBloc, MainState, MainModel?>(
      selector: (state) => state.mainModelObj,
      builder: (context, mainModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 26.v,
            );
          },
          itemCount: mainModelObj?.fiftyfourItemList.length ?? 0,
          itemBuilder: (context, index) {
            FiftyfourItemModel model =
                mainModelObj?.fiftyfourItemList[index] ?? FiftyfourItemModel();
            return FiftyfourItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
