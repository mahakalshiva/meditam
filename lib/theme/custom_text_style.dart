import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallAlegreyaSansOnPrimaryContainer =>
      theme.textTheme.bodySmall!.alegreyaSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get bodySmallAlegreyaSansOnPrimaryContainerLight =>
      theme.textTheme.bodySmall!.alegreyaSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallSFProTextGray50001 =>
      theme.textTheme.bodySmall!.sFProText.copyWith(
        color: appTheme.gray50001,
        fontSize: 11.fSize,
      );
  static get bodySmallSFProTextGray700 =>
      theme.textTheme.bodySmall!.sFProText.copyWith(
        color: appTheme.gray700,
        fontSize: 11.fSize,
      );
  // Display text style
  static get displaySmallAlegreyaSans =>
      theme.textTheme.displaySmall!.alegreyaSans.copyWith(
        fontSize: 38.fSize,
        fontWeight: FontWeight.w400,
      );
  static get displaySmallBold => theme.textTheme.displaySmall!.copyWith(
        fontSize: 34.fSize,
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineSmallAlegreyaBlack900 =>
      theme.textTheme.headlineSmall!.alegreya.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallAlegreyaOnPrimary =>
      theme.textTheme.headlineSmall!.alegreya.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.53),
        fontWeight: FontWeight.w400,
      );
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // Label text style
  static get labelLargeGray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.67),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnPrimaryContainerRegular =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.53),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnPrimaryContainerRegular22 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.7),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto;
  static get titleMediumBluegray80087 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray80087,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallOnPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.67),
      );
  static get titleSmallSFProTextOnPrimary =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get karla {
    return copyWith(
      fontFamily: 'Karla',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get alegreyaSans {
    return copyWith(
      fontFamily: 'Alegreya Sans',
    );
  }

  TextStyle get alegreya {
    return copyWith(
      fontFamily: 'Alegreya',
    );
  }
}
