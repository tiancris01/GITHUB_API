part of '../design.dart';

class ThemeFoundation {
  ThemeFoundation._internal();
  static final light = ThemeData(
      /**
     * dialogTheme
     */
      dialogTheme: StylesFoundation.dialogStyle.dialogTheme,
      /**
     * scaffoldBackgroundColor
     */
      scaffoldBackgroundColor: ColorsFoundation.background.gray,
      /**
     * appBarTheme
     */
      appBarTheme: StylesFoundation.appBarStyle.appBar,
      /**
     * brightness
     */
      brightness: Brightness.light,
      /**
     * primaryColor
     */
      primaryColor: ColorsFoundation.primary,
      /**
     * CardTheme
     */
      cardTheme: CardTheme(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        surfaceTintColor: ColorsFoundation.background.white,
        color: ColorsFoundation.background.white,
      ),
      /**
     * bottomSheetTheme
     */
      bottomSheetTheme: BottomSheetThemeData(
        surfaceTintColor: ColorsFoundation.background.white,
      ),
      /**
     * colorScheme
     */
      colorScheme: ColorScheme.light(
          primary: ColorsFoundation.primary,
          primaryContainer: ColorsFoundation.background.white,
          onPrimary: ColorsFoundation.background.white,
          background: ColorsFoundation.background.white,
          onBackground: ColorsFoundation.background.white),
      /**
     * textButtonTheme
     */
      textButtonTheme: TextButtonThemeData(
        style: StylesFoundation.textButtonStyle.textButtonModal,
      ),
      /**
     * elevatedButtonTheme
     */
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: StylesFoundation.elevatedButtonStyle.mainElevatedButton,
      ),
      /**
     * outlinedButtonTheme
     */
      // outlinedButtonTheme: OutlinedButtonThemeData(
      //     style: StylesFoundation.of(Brightness.light)
      //         .outlinedButtonStylePrimaryB),
      /*
      * titleMedium
      */
      textTheme: TextTheme(
        headlineLarge: FontsFoundation.textStyle.headlineLarge,
        headlineSmall: FontsFoundation.textStyle.headlineSmall,
        titleLarge: FontsFoundation.textStyle.titleLarge,
        titleMedium: FontsFoundation.textStyle.titleMedium,
        titleSmall: FontsFoundation.textStyle.titleSmall,
        bodyLarge: FontsFoundation.textStyle.bodyLarge,
        bodyMedium: FontsFoundation.textStyle.bodyMedium,
        bodySmall: FontsFoundation.textStyle.bodySmall,
      ),
      /**
     * inputDecorationTheme
     */
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ColorsToken.white,
        border: StylesFoundation.inputBorderStyle.border,
        contentPadding: StylesFoundation.contentPaddingInput,
        errorBorder: StylesFoundation.inputBorderStyle.errorBorder,
        hintStyle: FontsFoundation.textFieldStyle.hitTextStyle,
        focusedBorder: StylesFoundation.inputBorderStyle.focusedBorder,
        enabledBorder: StylesFoundation.inputBorderStyle.enabledBorder,
        labelStyle: FontsFoundation.textFieldStyle.labelTextField,
        errorStyle: FontsFoundation.textFieldStyle.errorTextStyle,
        focusedErrorBorder:
            StylesFoundation.inputBorderStyle.focusedErrorBorder,
      ),
      /**
     * checkboxTheme
     */
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return ColorsFoundation.primary;
          }
          return ColorsFoundation.background.white;
        }),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(
            width: 1.5,
            color: ColorsFoundation.background.gray,
          ),
        ),
        side: BorderSide(
          width: 1.5,
          color: ColorsFoundation.background.gray,
        ),
      ),
      /**
     * unselectedWidgetColor
     */
      unselectedWidgetColor: ColorsFoundation.background.gray,
      /**
     * divider
     */
      // dividerColor: ColorsToken.antiFlashWhite,
      // dividerTheme:
      //     const DividerThemeData(color: ColorsToken.antiFlashWhite, space: 16),
      /**
     * floatingAction
     */
      // floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //     backgroundColor: ColorsFoundation.primary,
      //     foregroundColor: ColorsToken.white),
      /**
     * radioTheme
     */
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return ColorsFoundation.primary;
            }
            return ColorsFoundation.primary;
          },
        ),
      ),
      /**
     * fontFamily
     */
      fontFamily: FontFamilyToken.inter
      /**
     * primaryTextTheme
     */
      //   primaryTextTheme: const TextTheme(
      //     bodyLarge: FontsToken.poppinsM16,
      //     bodyMedium: FontsToken.poppinsM14,
      //     bodySmall: FontsToken.poppinsM12,
      //     displayLarge: FontsToken.poppinsM16,
      //     displayMedium: FontsToken.poppinsM14,
      //     displaySmall: FontsToken.poppinsM12,
      //   ),
      );

  /* static final dark = ThemeData(

      /**
     * scaffoldBackgroundColor
     */
      scaffoldBackgroundColor: ColorsFoundation.background.dark,
      /**
     * appBarTheme
     */
      appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          foregroundColor: ColorsToken.white,
          titleTextStyle: FontsFoundation.of(Brightness.dark).appBar.pageTitle),
      /**
     * brightness
     */
      brightness: Brightness.dark,
      /**
     * primaryColor
     */
      primaryColor: ColorsFoundation.secondary,
      /**
     * colorScheme
     */
      colorScheme: const ColorScheme.dark(primary: ColorsFoundation.secondary),
      /**
     * textButtonTheme
     */
      textButtonTheme: TextButtonThemeData(
          style: StylesFoundation.of(Brightness.dark).textButtonStyleWhite),
      /**
     * elevatedButtonTheme
     */
      elevatedButtonTheme: ElevatedButtonThemeData(
          style:
              StylesFoundation.of(Brightness.dark).elevatedButtonStylePrimaryB),
      /**
     * outlinedButtonTheme
     */
      outlinedButtonTheme: OutlinedButtonThemeData(
          style:
              StylesFoundation.of(Brightness.dark).outlinedButtonStylePrimaryB),
      /*
      * titleMedium
      */
      textTheme: TextTheme(
          titleMedium:
              FontsFoundation.of(Brightness.dark).inputDecoration.style),
      /**
     * inputDecorationTheme
     */
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: StylesFoundation.contentPaddingInput,
        border: StylesFoundation.inputBorder.border,
        enabledBorder: StylesFoundation.inputBorder.enabledBorder,
        focusedBorder: StylesFoundation.inputBorder.focusedBorder,
        errorBorder: StylesFoundation.inputBorder.errorBorder,
        focusedErrorBorder: StylesFoundation.inputBorder.focusedErrorBorder,
        filled: true,
        fillColor: ColorsFoundation.background.dark,
        hintStyle:
            FontsFoundation.of(Brightness.dark).inputDecoration.hintStyle,
        labelStyle:
            FontsFoundation.of(Brightness.dark).inputDecoration.labelStyle,
        errorStyle:
            FontsFoundation.of(Brightness.dark).inputDecoration.errorStyle,
      ),
      /**
     * checkboxTheme
     */
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(ColorsFoundation.secondary),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(width: 1.5, color: ColorsToken.slateGray)),
          side: const BorderSide(width: 1.5, color: ColorsToken.slateGray)),
      unselectedWidgetColor: ColorsToken.slateGray,
      /**
     * divider
     */
      dividerColor: ColorsToken.antiFlashWhite,
      dividerTheme:
          const DividerThemeData(color: ColorsToken.antiFlashWhite, space: 16),
      /**
     * floatingAction
     */
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ColorsFoundation.secondary,
          foregroundColor: ColorsFoundation.text.black),
      /**
     * radioTheme
     */
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return ColorsFoundation.secondary;
          }
          return ColorsFoundation.secondary;
        }),
      ),
      /**
     * fontFamily
     */
      fontFamily: FontFamilyToken.poppins,
      /**
     * primaryTextTheme
     */
      primaryTextTheme: TextTheme(
        bodyLarge: FontsToken.poppinsM16.copyWith(color: Colors.red),
        bodyMedium: FontsToken.poppinsM14.copyWith(color: Colors.red),
        bodySmall: FontsToken.poppinsM12.copyWith(color: Colors.red),
        displayLarge: FontsToken.poppinsM16.copyWith(color: Colors.red),
        displayMedium: FontsToken.poppinsM14.copyWith(color: Colors.red),
        displaySmall: FontsToken.poppinsM12.copyWith(color: Colors.red),
        headlineLarge: FontsToken.poppinsM16.copyWith(color: Colors.red),
        headlineMedium: FontsToken.poppinsM14.copyWith(color: Colors.red),
        headlineSmall: FontsToken.poppinsM12.copyWith(color: Colors.red),
        titleLarge: FontsToken.poppinsM16.copyWith(color: Colors.red),
        titleMedium: FontsToken.poppinsM14.copyWith(color: Colors.red),
        titleSmall: FontsToken.poppinsM12.copyWith(color: Colors.red),
        labelLarge: FontsToken.poppinsM16.copyWith(color: Colors.red),
        labelMedium: FontsToken.poppinsM14.copyWith(color: Colors.red),
        labelSmall: FontsToken.poppinsM12.copyWith(color: Colors.red),
      )); */
}
