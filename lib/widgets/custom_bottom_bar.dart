import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgLogoOnprimarycontainer49x43,
      activeIcon: ImageConstant.imgLogoOnprimarycontainer49x43,
      type: BottomBarEnum.Logoonprimarycontainer49x43,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgProfile,
      activeIcon: ImageConstant.imgProfile,
      type: BottomBarEnum.Profile,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgProfileOnprimarycontainer,
      activeIcon: ImageConstant.imgProfileOnprimarycontainer,
      type: BottomBarEnum.Profileonprimarycontainer,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 20.v,
                width: 21.h,
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
            ),
            activeIcon: Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 20.v,
                width: 19.h,
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Logoonprimarycontainer49x43,
  Profile,
  Profileonprimarycontainer,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
