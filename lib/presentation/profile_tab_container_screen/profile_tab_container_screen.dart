import 'bloc/profile_tab_container_bloc.dart';
import 'models/profile_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/presentation/profile_page/profile_page.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:shivam_s_application4/widgets/app_bar/appbar_title_image.dart';
import 'package:shivam_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:shivam_s_application4/widgets/custom_bottom_bar.dart';

class ProfileTabContainerScreen extends StatefulWidget {
  const ProfileTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileTabContainerScreenState createState() =>
      ProfileTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileTabContainerBloc>(
      create: (context) => ProfileTabContainerBloc(ProfileTabContainerState(
        profileTabContainerModelObj: ProfileTabContainerModel(),
      ))
        ..add(ProfileTabContainerInitialEvent()),
      child: ProfileTabContainerScreen(),
    );
  }
}

class ProfileTabContainerScreenState extends State<ProfileTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ProfileTabContainerBloc, ProfileTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 26.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgProfilePic,
                    height: 150.adaptSize,
                    width: 150.adaptSize,
                    radius: BorderRadius.circular(
                      75.h,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "lbl_afreen_khan".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                  Opacity(
                    opacity: 0.9,
                    child: Text(
                      "lbl_lucknow_india".tr,
                      style: CustomTextStyles.titleLargeOnPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 32.v),
                  _buildTabview(context),
                  _buildTabBarView(context),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(
                left: 74.h,
                right: 70.h,
              ),
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
        imagePath: ImageConstant.imgHamburgerOnprimarycontainer18x22,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 19.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgLogoOnprimarycontainer49x43,
      ),
      actions: [
        AppbarTitle(
          text: "lbl_edit".tr,
          margin: EdgeInsets.fromLTRB(29.h, 18.v, 29.h, 19.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 35.v,
      width: 372.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.blueGray80087,
        unselectedLabelColor:
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
        indicatorColor: appTheme.teal200,
        tabs: [
          Tab(
            child: Text(
              "lbl_stats".tr,
            ),
          ),
          Tab(
            child: Opacity(
              opacity: 0.5,
              child: Text(
                "lbl_achievements".tr,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 315.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          ProfilePage.builder(context),
          ProfilePage.builder(context),
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
