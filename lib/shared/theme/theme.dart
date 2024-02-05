part of '../../app/core/design/design.dart';

class ThemeFoundation {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: FontFamilyToken.inter,
      primaryColor: ColorsFoundation.primary,
      colorScheme: const ColorScheme.light(
        primary: ColorsFoundation.primary,
        secondary: ColorsFoundation.secondary,
        error: ColorsFoundation.error,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        surfaceTintColor: ColorsFoundation.background.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: StylesFoundation.elevatedButtonStyle.mainElevatedButton,
      ),
      primaryTextTheme: FontsFoundation.primateTextTheme,
      inputDecorationTheme:
          StylesFoundation.inputDecorationStyle.inputDecorationLightTheme,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: FontFamilyToken.inter,
      primaryColor: ColorsFoundation.primary,
      colorScheme: const ColorScheme.dark(
        primary: ColorsFoundation.primary,
        secondary: ColorsFoundation.secondary,
        error: ColorsFoundation.error,
        background: ColorsFoundation.quaternary,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        surfaceTintColor: ColorsFoundation.background.black,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: StylesFoundation.elevatedButtonStyle.mainElevatedButton,
      ),
      primaryTextTheme: FontsFoundation.lightTextTheme,
      inputDecorationTheme:
          StylesFoundation.inputDecorationStyle.inputDecorationDarkTheme,
    );
  }
}
