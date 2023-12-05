import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor:
                  theme.colorScheme.onPrimaryContainer.withOpacity(1),
              body: SizedBox(
                  width: double.maxFinite,
                  child: SizedBox(
                      height: mediaQueryData.size.height,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
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
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgLogoOnprimarycontainer213x202,
                                          height: 213.v,
                                          width: 202.h,
                                          alignment: Alignment.bottomCenter,
                                          margin:
                                              EdgeInsets.only(bottom: 222.v))
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle9,
                            height: 119.v,
                            width: 375.h,
                            alignment: Alignment.bottomCenter)
                      ])))));
    });
  }
}
