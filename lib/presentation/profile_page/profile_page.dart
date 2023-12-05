import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:shivam_s_application4/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePageState createState() => ProfilePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfilePage(),
    );
  }
}

class ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin<ProfilePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnPrimary,
              child: Column(
                children: [
                  SizedBox(height: 38.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 49.h,
                      right: 55.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 9.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "msg_this_week_s_stats".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                "lbl_show_all".tr,
                                style: CustomTextStyles.labelLargeGray400,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 18.v),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "lbl_999".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "lbl_799".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "lbl_599".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "lbl_399".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      "lbl_199".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      "lbl_0".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 170.v,
                              width: 244.h,
                              margin: EdgeInsets.only(
                                left: 7.h,
                                top: 6.v,
                                bottom: 6.v,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 2.h),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup31,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPreviousWeekS,
                                    height: 83.v,
                                    width: 196.h,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgThisWeekSStats,
                                    height: 146.v,
                                    width: 233.h,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 9.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 32.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "lbl_mon".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Text(
                                      "lbl_tue".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 21.h),
                                    child: Text(
                                      "lbl_wed".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 21.h),
                                    child: Text(
                                      "lbl_thu".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 21.h),
                                    child: Text(
                                      "lbl_fri".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 22.h),
                                    child: Text(
                                      "lbl_sat".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Text(
                                      "lbl_sat".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
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
            ),
          ),
        );
      },
    );
  }
}
