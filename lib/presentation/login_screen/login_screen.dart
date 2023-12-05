import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/core/utils/validation_functions.dart';
import 'package:shivam_s_application4/widgets/custom_elevated_button.dart';
import 'package:shivam_s_application4/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState(
        loginModelObj: LoginModel(),
      ))
        ..add(LoginInitialEvent()),
      child: LoginScreen(),
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
            height: mediaQueryData.size.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 27.h,
                      top: 101.v,
                      right: 27.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 49.v,
                          width: 43.h,
                          margin: EdgeInsets.only(left: 8.h),
                        ),
                        SizedBox(height: 34.v),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "lbl_sign_in".tr,
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 299.h,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              right: 13.h,
                            ),
                            child: Text(
                              "msg_sign_in_now_to_acces".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .titleLargeOnPrimaryContainerRegular22,
                            ),
                          ),
                        ),
                        SizedBox(height: 52.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            right: 7.h,
                          ),
                          child: BlocSelector<LoginBloc, LoginState,
                              TextEditingController?>(
                            selector: (state) => state.emailController,
                            builder: (context, emailController) {
                              return CustomTextFormField(
                                controller: emailController,
                                hintText: "lbl_email_address".tr,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_email"
                                        .tr;
                                  }
                                  return null;
                                },
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10.h),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 37.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            right: 7.h,
                          ),
                          child: BlocSelector<LoginBloc, LoginState,
                              TextEditingController?>(
                            selector: (state) => state.passwordController,
                            builder: (context, passwordController) {
                              return CustomTextFormField(
                                controller: passwordController,
                                hintText: "lbl_password".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_password"
                                        .tr;
                                  }
                                  return null;
                                },
                                obscureText: true,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10.h),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 7.h),
                            child: Text(
                              "msg_forgot_password".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 28.v),
                        CustomElevatedButton(
                          text: "lbl_login".tr,
                          buttonTextStyle: CustomTextStyles.headlineSmall_1,
                        ),
                        SizedBox(height: 20.v),
                        Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_don_t_have_an_account2".tr,
                                  style: CustomTextStyles.titleLargeRegular,
                                ),
                                TextSpan(
                                  text: "  ".tr,
                                ),
                                TextSpan(
                                  text: "lbl_sign_up".tr,
                                  style: CustomTextStyles.titleLargeBold,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
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
          ),
        ),
      ),
    );
  }
}
