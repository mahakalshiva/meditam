import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/core/utils/validation_functions.dart';
import 'package:shivam_s_application4/widgets/custom_elevated_button.dart';
import 'package:shivam_s_application4/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgLogo,
                  height: 49.v,
                  width: 43.h,
                  margin: EdgeInsets.only(left: 35.h),
                ),
                SizedBox(height: 34.v),
                Padding(
                  padding: EdgeInsets.only(left: 35.h),
                  child: Text(
                    "lbl_sign_up".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                Container(
                  width: 265.h,
                  margin: EdgeInsets.only(
                    left: 35.h,
                    right: 74.h,
                  ),
                  child: Text(
                    "msg_sign_up_now_for".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        CustomTextStyles.titleLargeOnPrimaryContainerRegular22,
                  ),
                ),
                SizedBox(height: 50.v),
                _buildName(context),
                SizedBox(height: 37.v),
                _buildEmail(context),
                SizedBox(height: 37.v),
                _buildPassword(context),
                SizedBox(height: 29.v),
                _buildFiftyNine(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 34.h,
      ),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
            controller: nameController,
            hintText: "lbl_name".tr,
            alignment: Alignment.center,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 34.h,
      ),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
            controller: emailController,
            hintText: "lbl_email_address".tr,
            textInputType: TextInputType.emailAddress,
            alignment: Alignment.center,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 34.h,
      ),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.passwordController,
        builder: (context, passwordController) {
          return CustomTextFormField(
            controller: passwordController,
            hintText: "lbl_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.center,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
      width: 321.h,
      text: "lbl_signup2".tr,
      buttonTextStyle: CustomTextStyles.headlineSmall_1,
      alignment: Alignment.topCenter,
    );
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return SizedBox(
      height: 273.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          _buildSignupButton(context),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 79.v),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_already_have_an2".tr,
                      style: CustomTextStyles.titleLargeRegular,
                    ),
                    TextSpan(
                      text: "  ".tr,
                    ),
                    TextSpan(
                      text: "lbl_sign_in".tr,
                      style: CustomTextStyles.titleLargeBold,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup28,
              height: 223.v,
              width: 375.h,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
