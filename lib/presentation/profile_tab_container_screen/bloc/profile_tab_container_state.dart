// ignore_for_file: must_be_immutable

part of 'profile_tab_container_bloc.dart';

/// Represents the state of ProfileTabContainer in the application.
class ProfileTabContainerState extends Equatable {
  ProfileTabContainerState({this.profileTabContainerModelObj});

  ProfileTabContainerModel? profileTabContainerModelObj;

  @override
  List<Object?> get props => [
        profileTabContainerModelObj,
      ];
  ProfileTabContainerState copyWith(
      {ProfileTabContainerModel? profileTabContainerModelObj}) {
    return ProfileTabContainerState(
      profileTabContainerModelObj:
          profileTabContainerModelObj ?? this.profileTabContainerModelObj,
    );
  }
}
