
import 'dart:ui';
import 'package:flutter/material.dart';





class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  //gradientLoader
  final GradientProgressLoaderCustomTheme gradientProgressLoaderCustomTheme;
  //snackbarSuccessToast
  final Color toastSuccessColor;
  //snackbarErrorToast
  final Color toastErrorColor;
  final Color sendInviteContainerBgColor;
  //homeScreenServicesIconColor
  final Color homeServicesSvgIcon;
  final Color homeServicesSvgBg;
  final Color homeTransitionSvgIcon;
  final Color downloadSvgIcon;
  final Color levelTwoSvgIcon;
  final Widget customLoading;

  final CustomButtonTheme customButtonTheme;
  final LinearGradient customLinearGradient;
  final LinearGradient customLinearGradientHalfScreen;
  final LinearGradient customLinearGradientFullScreen;
  final BoxDecoration downloadBtnDecoration;
  final BoxDecoration shareBtnDecoration;
  final BoxDecoration qrCodeDecoration;
  final BoxDecoration circularBgForUserInitial;
  final AppColorTheme appColorTheme;


  CustomThemeExtension({
    required this.gradientProgressLoaderCustomTheme,
    required this.toastSuccessColor,
    required this.toastErrorColor,
    required this.sendInviteContainerBgColor,
    required this.homeServicesSvgIcon,
    required this.homeServicesSvgBg,
    required this.homeTransitionSvgIcon,
    required this.downloadSvgIcon,
    required this.levelTwoSvgIcon,
    required this.customButtonTheme,
    required this.customLinearGradient,
    required this.customLinearGradientHalfScreen,
    required this.customLinearGradientFullScreen,
    required this.downloadBtnDecoration,
    required this.shareBtnDecoration,
    required this.qrCodeDecoration,
    required this.circularBgForUserInitial,
    required this.customLoading,
    required this.appColorTheme,
  });

  @override
  CustomThemeExtension copyWith({
    GradientProgressLoaderCustomTheme? gradientProgressLoaderCustomTheme,
    Color? toastSuccessColor,
    Color? toastErrorColor,
    Color? sendInviteContainerBgColor,
    Color? homeServicesSvgIcon,
    Color? homeServicesSvgBg,
    Color? homeTransitionSvgIcon,
    Color? downloadSvgIcon,
    Color? levelTwoSvgIcon,
    CustomButtonTheme? customButtonTheme,
    LinearGradient? customLinearGradient,
    LinearGradient? customLinearGradientHalfScreen,
    LinearGradient? customLinearGradientFullScreen,
    BoxDecoration? downloadBtnDecoration,
    BoxDecoration? shareBtnDecoration,
    BoxDecoration? qrCodeDecoration,
    BoxDecoration? circularBgForUserInitial,
    Widget? customLoading,
    AppColorTheme? appColorTheme


  }) {
    return CustomThemeExtension(
      gradientProgressLoaderCustomTheme: gradientProgressLoaderCustomTheme ?? this.gradientProgressLoaderCustomTheme,
      toastSuccessColor: toastSuccessColor ?? this.toastSuccessColor,
      toastErrorColor: toastErrorColor ?? this.toastErrorColor,
      sendInviteContainerBgColor: sendInviteContainerBgColor ?? this.sendInviteContainerBgColor,
      homeServicesSvgIcon: homeServicesSvgIcon ?? this.homeServicesSvgIcon,
      homeServicesSvgBg: homeServicesSvgBg ?? this.homeServicesSvgBg,
      homeTransitionSvgIcon: homeTransitionSvgIcon ?? this.homeTransitionSvgIcon,
      downloadSvgIcon: downloadSvgIcon ?? this.downloadSvgIcon,
      levelTwoSvgIcon: levelTwoSvgIcon ?? this.levelTwoSvgIcon,
      customButtonTheme: customButtonTheme ?? this.customButtonTheme,
      customLinearGradient: customLinearGradient ?? this.customLinearGradient,
      customLinearGradientHalfScreen: customLinearGradientHalfScreen ?? this.customLinearGradientHalfScreen,
      customLinearGradientFullScreen: customLinearGradientFullScreen ?? this.customLinearGradientFullScreen,
      downloadBtnDecoration: downloadBtnDecoration ?? this.downloadBtnDecoration,
      shareBtnDecoration: shareBtnDecoration ?? this.shareBtnDecoration,
      qrCodeDecoration: qrCodeDecoration ?? this.qrCodeDecoration,
      circularBgForUserInitial: circularBgForUserInitial ?? this.circularBgForUserInitial,
      customLoading: customLoading ?? this.customLoading,
      appColorTheme: appColorTheme ?? this.appColorTheme,
    );
  }

  @override
  CustomThemeExtension lerp(ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      toastSuccessColor: Color.lerp(toastSuccessColor, other.toastSuccessColor, t)!,
      toastErrorColor: Color.lerp(toastErrorColor, other.toastErrorColor, t)!,
      sendInviteContainerBgColor: Color.lerp(sendInviteContainerBgColor, other.sendInviteContainerBgColor, t)!,
      homeServicesSvgIcon: Color.lerp(homeServicesSvgIcon, other.homeServicesSvgIcon, t)!,
      homeTransitionSvgIcon: Color.lerp(homeTransitionSvgIcon, other.homeTransitionSvgIcon, t)!,
      homeServicesSvgBg: Color.lerp(homeServicesSvgBg, other.homeServicesSvgBg, t)!,
      downloadSvgIcon: Color.lerp(downloadSvgIcon, other.downloadSvgIcon, t)!,
      levelTwoSvgIcon: Color.lerp(levelTwoSvgIcon, other.levelTwoSvgIcon, t)!,
      gradientProgressLoaderCustomTheme: gradientProgressLoaderCustomTheme,
      customButtonTheme: customButtonTheme,
      customLinearGradient: customLinearGradient,
      customLinearGradientHalfScreen: customLinearGradientHalfScreen,
      customLinearGradientFullScreen: customLinearGradientFullScreen,
      downloadBtnDecoration: downloadBtnDecoration,
      shareBtnDecoration: shareBtnDecoration,
      qrCodeDecoration: qrCodeDecoration,
      circularBgForUserInitial: circularBgForUserInitial,
      customLoading: customLoading,
      appColorTheme: appColorTheme,

    );
  }
}

//gradientprogressindicator
class GradientProgressLoaderCustomTheme{
  final double loaderRadius;
  final List<Color> gradientLoaderColors;
  final double strokeWidth;
  GradientProgressLoaderCustomTheme({
    required this.loaderRadius,
    required this.gradientLoaderColors,
    required this.strokeWidth
  });
}

//circularprogrssindicator


//buttontheme
class CustomButtonTheme{
  final Color enableButtonColor;
  final Color disableButtonColor;
  final Color enableBtnTextColor;
  final Color disableBtnTextColor;
  final Color enableBtnBorderColor;
  final Color disableBtnBorderColor;
  final Color circularProgressIndicatorColor;
  CustomButtonTheme({
    required this.enableButtonColor,
    required this.disableButtonColor,
    required this.enableBtnTextColor,
    required this.disableBtnTextColor,
    required this.enableBtnBorderColor,
    required this.disableBtnBorderColor,
    required this.circularProgressIndicatorColor,
  });
}

class AppColorTheme{
  final Color textPrimaryColor;
  final Color textSecondaryColor;
  final Color textTitleColor;
  final Color textSubTitleColor;
  final Color textHintColor;
  final Color textNeutralColor;
  final Color textSuccessColor;
  final Color textFailureColor;
  final Color textBackgroundColor;
  final Color textBlackColor;
  final Color iconWarningColor;
  final Color textSubtitleLightColor;
  AppColorTheme({
    required this.textPrimaryColor,
    required this.textSecondaryColor,
    required this.textTitleColor,
    required this.textSubTitleColor,
    required this.textHintColor,
    required this.textNeutralColor,
    required this.textSuccessColor,
    required this.textFailureColor,
    required this.textBackgroundColor,
    required this.textBlackColor,
    required this.iconWarningColor,
    required this.textSubtitleLightColor,
  });
}


