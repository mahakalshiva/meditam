import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
      create: (context) => OnboardingBloc(OnboardingState(
        onboardingModelObj: OnboardingModel(),
      ))
        ..add(OnboardingInitialEvent()),
      child: OnboardingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: SizedBox(
              width: double.maxFinite,
              child: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 735.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img27528111,
                              height: 735.v,
                              width: 375.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(
                                    27.h, 180.v, 27.h, 50.v),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgLogoOnprimarycontainer213x202,
                                      height: 199.v,
                                      width: 191.h,
                                    ),
                                    SizedBox(height: 31.v),
                                    Text(
                                      "lbl_welcome".tr,
                                      style: CustomTextStyles.displaySmallBold,
                                    ),
                                    Container(
                                      width: 226.h,
                                      margin: EdgeInsets.only(
                                        left: 48.h,
                                        right: 47.h,
                                      ),
                                      child: Text(
                                        "msg_do_meditation_stay".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.titleLarge,
                                      ),
                                    ),
                                    Spacer(),
                                    CustomElevatedButton(
                                      text: "msg_login_with_email".tr,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildOnboardingConfirmation(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildOnboardingConfirmation(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 67.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 73.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_don_t_have_an_account2".tr,
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "lbl_sign_up".tr,
                    style: CustomTextStyles.titleLargeBold,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
