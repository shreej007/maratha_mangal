import 'package:flutter/material.dart';
import 'custom_theme_extension.dart';


extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  Widget get customLoading => theme.extension<CustomThemeExtension>()!.customLoading;




  double get loaderRadius => theme.extension<CustomThemeExtension>()!.gradientProgressLoaderCustomTheme.loaderRadius;
  List<Color> get gradientLoaderColors => theme.extension<CustomThemeExtension>()!.gradientProgressLoaderCustomTheme.gradientLoaderColors;
  double get strokeWidth => theme.extension<CustomThemeExtension>()!.gradientProgressLoaderCustomTheme.strokeWidth;


  Color get homeServicesSvgIcon => theme.extension<CustomThemeExtension>()!.homeServicesSvgIcon;
  Color get homeServicesSvgBg => theme.extension<CustomThemeExtension>()!.homeServicesSvgBg;
  Color get sendInviteContainerBgColor => theme.extension<CustomThemeExtension>()!.sendInviteContainerBgColor;
  Color get homeTransitionSvgIcon => theme.extension<CustomThemeExtension>()!.homeTransitionSvgIcon;
  Color get downloadSvgIcon => theme.extension<CustomThemeExtension>()!.downloadSvgIcon;
  Color get levelTwoSvgIcon => theme.extension<CustomThemeExtension>()!.levelTwoSvgIcon;
  Color get enableButtonColor => theme.extension<CustomThemeExtension>()!.customButtonTheme.enableButtonColor;
  Color get disableButtonColor => theme.extension<CustomThemeExtension>()!.customButtonTheme.disableButtonColor;
  Color get enableBtnTextColor => theme.extension<CustomThemeExtension>()!.customButtonTheme.enableBtnTextColor;
  Color get disableBtnTextColor => theme.extension<CustomThemeExtension>()!.customButtonTheme.disableBtnTextColor;
  Color get enableBtnBorderColor => theme.extension<CustomThemeExtension>()!.customButtonTheme.enableBtnBorderColor;
  Color get disableBtnBorderColor => theme.extension<CustomThemeExtension>()!.customButtonTheme.disableBtnBorderColor;
  Color get circularProgressIndicatorColor => theme.extension<CustomThemeExtension>()!.customButtonTheme.circularProgressIndicatorColor;



  LinearGradient get customLinearGradient => theme.extension<CustomThemeExtension>()!.customLinearGradient;
  LinearGradient get customLinearGradientHalfScreen => theme.extension<CustomThemeExtension>()!.customLinearGradientHalfScreen;
  LinearGradient get customLinearGradientFullScreen => theme.extension<CustomThemeExtension>()!.customLinearGradientFullScreen;
  BoxDecoration get downloadBtnDecoration => theme.extension<CustomThemeExtension>()!.downloadBtnDecoration;
  BoxDecoration get shareBtnDecoration => theme.extension<CustomThemeExtension>()!.shareBtnDecoration;
  BoxDecoration get qrCodeDecoration => theme.extension<CustomThemeExtension>()!.qrCodeDecoration;
  BoxDecoration get circularBgForUserInitial => theme.extension<CustomThemeExtension>()!.circularBgForUserInitial;

  Color get textPrimaryColor => theme.extension<CustomThemeExtension>()!.appColorTheme.textPrimaryColor;
  Color get textSecondaryColor => theme.extension<CustomThemeExtension>()!.appColorTheme.textSecondaryColor;
  Color get textTitleColor => theme.extension<CustomThemeExtension>()!.appColorTheme.textTitleColor;
  Color get textSubTitleColor => theme.extension<CustomThemeExtension>()!.appColorTheme.textSubTitleColor;
  Color get textHintColor => theme.extension<CustomThemeExtension>()!.appColorTheme.textHintColor;
  Color get textNeutralColor => theme.extension<CustomThemeExtension>()!.appColorTheme.textNeutralColor;
  Color get textSuccessColor => theme.extension<CustomThemeExtension>()!.appColorTheme.textSuccessColor;
  Color get textFailureColor => theme.extension<CustomThemeExtension>()!.appColorTheme.textFailureColor;
  Color get textBackgroundColor => theme.extension<CustomThemeExtension>()!.appColorTheme.textBackgroundColor;
  Color get textBlackColor => theme.extension<CustomThemeExtension>()!.appColorTheme.textBlackColor;
  Color get iconWarningColor => theme.extension<CustomThemeExtension>()!.appColorTheme.iconWarningColor;
  Color get textSubtitleLightColor => theme.extension<CustomThemeExtension>()!.appColorTheme.textSubtitleLightColor;

}