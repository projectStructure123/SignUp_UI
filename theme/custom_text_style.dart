import 'package:flutter/material.dart';
import 'package:untitled8/core/utils/size_utils.dart';
import 'package:untitled8/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.0,
      );
  static get bodyLargeInterOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumCairoGray700 =>
      theme.textTheme.bodyMedium!.cairo.copyWith(
        color: appTheme.gray700,
        fontSize: 15.0,
      );
  static get bodyMediumTajawalGray800 =>
      theme.textTheme.bodyMedium!.tajawal.copyWith(
        color: appTheme.gray800,
        fontSize: 15.0,
      );
  static get bodyMediumTajawalff5b5b5e =>
      theme.textTheme.bodyMedium!.tajawal.copyWith(
        color: Color(0XFF5B5B5E),
        fontSize: 15.0,
      );
  static get bodyMediumTajawalff6a1179 =>
      theme.textTheme.bodyMedium!.tajawal.copyWith(
        color: Color(0XFF6A1179),
        fontSize: 15.0,
      );
  // Title text style
  static get titleMediumTajawalGray400 =>
      theme.textTheme.titleMedium!.tajawal.copyWith(
        color: appTheme.gray400,
        fontSize: 17.0,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallTajawalOnErrorContainerMedium =>
      theme.textTheme.titleSmall!.tajawal.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get tajawal {
    return copyWith(
      fontFamily: 'Tajawal',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get cairo {
    return copyWith(
      fontFamily: 'Cairo',
    );
  }
}
