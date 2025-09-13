import 'package:app/theme/custom_theme_extension.dart';
import 'package:flutter/material.dart';
import '../common/constants/app_colours.dart';
import 'package:loading_indicator/loading_indicator.dart';


final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primaryLight,
  // scaffoldBackgroundColor: AppColors.bgColorGrey,
  scaffoldBackgroundColor: Colors.white,
  //Appbar
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primary,
    surfaceTintColor: Colors.transparent,
    elevation: 0,
    centerTitle: false,
    titleTextStyle: TextStyle(
      color: AppColors.primaryWhite,
      fontSize: 20,
      fontFamily: "SfDisplaySemibold",
      fontWeight: FontWeight.w600,
    ),
    iconTheme: IconThemeData(
      color: AppColors.primaryWhite,
      size: 16
    ),
  ),

  //BotomNavigationBar
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: AppColors.homeScreenNavigationBarIcon,
    unselectedItemColor: AppColors.subTextColor,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(
        fontSize: 12, fontWeight: FontWeight.w500
    ),
    unselectedLabelStyle: TextStyle(
        fontSize: 10, fontWeight: FontWeight.w500
    ),
    selectedIconTheme: IconThemeData(
        color: AppColors.primaryLight,
        size: 50
    ),
    unselectedIconTheme: IconThemeData(
        color: AppColors.subTextColor,
        size: 40
    ),
  ),

  //divider
  dividerTheme: const DividerThemeData(
      color: AppColors.dividerColor,
      thickness: 1,
      space: 1
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      fixedSize: WidgetStateProperty.all(const Size(336, 48)),
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return AppColors.secondary100Color;
        }
        return AppColors.primaryLight;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return AppColors.secondary100Color;
        }
        return AppColors.baseWhiteColor;
      }),
      overlayColor: WidgetStateProperty.all(AppColors.primaryLight.withOpacity(0.1)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: AppColors.primaryLight),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 14),
      ),
      textStyle: WidgetStateProperty.all(
        const TextStyle(
          fontFamily: "NunitoSansSemiBold",
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    ),
  ),

  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
          color: AppColors.textFeildBorderColor,width: 1),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    hintStyle: TextStyle( color: AppColors.textFeildBorderColor, fontSize: 16,fontWeight: FontWeight.w400,fontFamily: "NunitoSansRegular"),
    border:  OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.textFeildBorderColor,width: 1),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide( color: AppColors.textFeildBorderColor,width: 1),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.textFeildBorderColor,width: 1),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    errorBorder: OutlineInputBorder(
      // borderSide: BorderSide(color: AppColors.errorTextColor, width: 1),
      borderSide: BorderSide(color: AppColors.errorColorPink, width: 1),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    errorStyle: TextStyle(
      color: AppColors.errorColorPink,
      fontSize: 12,
    ),
    focusedErrorBorder: OutlineInputBorder(
      // borderSide: BorderSide(color: AppColors.errorTextColor, width: 1),
      borderSide: BorderSide(color: AppColors.errorColorPink, width: 1),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),

  ),

  tabBarTheme: TabBarTheme(
    overlayColor: WidgetStateProperty.all(Colors.transparent),
    indicatorColor: Colors.transparent,
    indicator: const BoxDecoration(
      color: AppColors.newThemeServicesSvgBg,
      // color: Colors.grey,
      border: Border(
        bottom: BorderSide(
          color: AppColors.newMagentaThemePrimaryColor,
          // color: Colors.grey,
          width: 3,
        ),
      ),
    ),
    labelColor: AppColors.newMagentaThemePrimaryColor,
    // labelColor: Colors.grey,
    unselectedLabelColor: AppColors.newThemeSecondaryColor,
    // unselectedLabelColor: Colors.grey,
    labelStyle: const TextStyle(
      fontSize: 14,
      fontFamily: "NunitoSansSemiBold",
      fontWeight: FontWeight.w700,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 14,
      fontFamily: "NunitoSansSemiBold",
      fontWeight: FontWeight.w700,
    ),
    indicatorSize: TabBarIndicatorSize.tab,
  ),

  // textTheme: TextTheme(
  //   bodyLarge: AppTextStyles.regular,
  //   bodyMedium: AppTextStyles.medium,
  //   titleMedium: AppTextStyles.semiBold,
  //   titleLarge: AppTextStyles.bold,
  // ),


  extensions: [
    CustomThemeExtension(
      //GradientProgressBar
      gradientProgressLoaderCustomTheme: GradientProgressLoaderCustomTheme(
          loaderRadius: 40,
          gradientLoaderColors: const [
            AppColors.primaryLight,
            AppColors.textFeildBorderColor,
          ], strokeWidth: 8
      ),
      //snackbarsuccess
      toastSuccessColor: Colors.green,
      //snackbarerror
      toastErrorColor: Colors.red,

      sendInviteContainerBgColor: AppColors.newThemeServicesSvgBg,

      //homeiconcolor
      homeServicesSvgIcon: AppColors.primaryLight,

      homeServicesSvgBg: AppColors.newThemeServicesSvgBg,
      //home transaction
      homeTransitionSvgIcon: AppColors.primaryLight,
      //qr download
      downloadSvgIcon: AppColors.primaryLight,
      //leveltwo icon
      levelTwoSvgIcon: AppColors.primaryLight,
      //buttom theme
      customButtonTheme: CustomButtonTheme(
            enableButtonColor: AppColors.primaryLight,
            disableButtonColor: AppColors.disableBtnBorderColor,
            enableBtnTextColor: AppColors.textColor,
            disableBtnTextColor: AppColors.disableButtonTextColor,
            enableBtnBorderColor: AppColors.primaryLight,
           disableBtnBorderColor: AppColors.disableButtonTextColor,
           circularProgressIndicatorColor: AppColors.primaryLight
        ),

      customLinearGradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.newThemeSecondaryColor2,
            // AppColors.newThemeSecondaryColor,
            AppColors.primaryLight,
          ],
          stops: [0.0, 0.4],
        ),

        customLinearGradientHalfScreen: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.primaryLight,
            AppColors.newThemeSecondaryColor2,
            // AppColors.newThemeSecondaryColor.withOpacity(0.1),
          ],
          stops: [0.2, 1.0],
        ),

      customLinearGradientFullScreen: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          AppColors.primaryLight,
          // AppColors.newThemeSecondaryColor,
          // AppColors.gradi2,
          AppColors.gradi3,
        ],
        stops: [0.0, 0.9], // Adjusted stops for smoother transition
        // stops: [0.0, 0.8, 0.9], // Adjusted stops for smoother transition
      ),

      // LinearGradient(
      //   begin: Alignment.topCenter,
      //   end: Alignment.bottomCenter,
      //   colors: [
      //     AppColors.primaryLight,
      //     AppColors.newThemeSecondaryColor,
      //   ],
      //   // stops: [0.4, 0.6],
      // ),

      downloadBtnDecoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.primaryLight),
        borderRadius: BorderRadius.circular(12),
      ),

      shareBtnDecoration: BoxDecoration(
        color: AppColors.primaryLight,
        border: Border.all(color: AppColors.primaryLight),
        borderRadius: BorderRadius.circular(12),
      ),

      qrCodeDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.primaryLight)
      ),

      circularBgForUserInitial: const BoxDecoration(
        color: AppColors.initialUserBgColor,
        shape: BoxShape.circle,
      ),

      customLoading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Center(
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: LoadingIndicator(
                      indicatorType: Indicator.circleStrokeSpin,
                      colors: [
                        AppColors.primaryLight
                      ],
                    ),
                  )
              ),
            )
        ),

      appColorTheme: AppColorTheme(
          textPrimaryColor: AppColors.newMagentaThemePrimaryColor,
          textSecondaryColor: AppColors.newMagentaHomeScreenTextColor,
          textTitleColor: AppColors.newMagentaTextHeaderColor,
          textSubTitleColor: AppColors.newMagentaSubTextColor,
          textHintColor: AppColors.newMagentaSubTextColor2,
          textNeutralColor: AppColors.newMagentaTextColor,
          textSuccessColor: AppColors.newMagentaSuccessfulTextColor,
          textFailureColor: AppColors.newMagentaErrorTextColor,
          textBackgroundColor: AppColors.newMagentaLoginHeaderTextColor,
          textBlackColor: AppColors.newMagentaBlackColor,
          iconWarningColor: AppColors.newMagentaWarningColor,
          textSubtitleLightColor: AppColors.newMagentaSubTextColor3
      )



    )
  ],
);
