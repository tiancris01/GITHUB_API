part of '../design.dart';

class StylesFoundation {
  static final inputBorderStyle = _InputBorderSyle._();
  static final elevatedButtonStyle = _ElevatedButtonStyle._();
  static InputDecorationStyle get inputDecorationStyle =>
      InputDecorationStyle();

  static EdgeInsets get contentPaddingInput =>
      const EdgeInsets.symmetric(horizontal: 16, vertical: 12);

  static ScrollBehavior get scrollBehavior =>
      const ScrollBehavior().copyWith(physics: const BouncingScrollPhysics());
}

class InputDecorationStyle {
  InputDecorationTheme get inputDecorationLightTheme => InputDecorationTheme(
        filled: true,
        fillColor: ColorsToken.white,
        border: StylesFoundation.inputBorderStyle.border,
        contentPadding: StylesFoundation.contentPaddingInput,
        errorBorder: StylesFoundation.inputBorderStyle.errorBorder,
        focusedBorder: StylesFoundation.inputBorderStyle.focusedBorder,
        enabledBorder: StylesFoundation.inputBorderStyle.enabledBorder,
        focusedErrorBorder:
            StylesFoundation.inputBorderStyle.focusedErrorBorder,
      );

  InputDecorationTheme get inputDecorationDarkTheme => InputDecorationTheme(
        filled: true,
        fillColor: ColorsFoundation.background.gray,
        border: StylesFoundation.inputBorderStyle.border,
        contentPadding: StylesFoundation.contentPaddingInput,
        errorBorder: StylesFoundation.inputBorderStyle.errorBorder,
        focusedBorder: StylesFoundation.inputBorderStyle.focusedBorder,
        enabledBorder: StylesFoundation.inputBorderStyle.enabledBorder,
        focusedErrorBorder:
            StylesFoundation.inputBorderStyle.focusedErrorBorder,
      );
  InputDecorationStyle();
}

class _ElevatedButtonStyle {
  final mainElevatedButton = ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: ColorsFoundation.text.whiteText,
    backgroundColor: ColorsFoundation.background.green,
    disabledBackgroundColor: ColorsFoundation.action.disabled,
    disabledForegroundColor: ColorsFoundation.action.disabledWhite,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
    shape: RoundedRectangleBorder(
      borderRadius: StylesToken.borderR16,
      side: StylesToken.borderSW1.copyWith(
        color: Colors.transparent,
      ),
    ),
  );

  _ElevatedButtonStyle._();
}

class _InputBorderSyle {
  static final _defect = OutlineInputBorder(
    borderRadius: StylesToken.borderR25,
    borderSide: StylesToken.borderSW1.copyWith(
      color: ColorsFoundation.background.gray,
    ),
  );

  static final _defaultError = OutlineInputBorder(
    borderRadius: StylesToken.borderR25,
    borderSide: StylesToken.borderSW1.copyWith(
      color: ColorsFoundation.action.error,
    ),
  );

  final alt = OutlineInputBorder(
    borderRadius: StylesToken.borderR25,
    borderSide: StylesToken.borderSW1.copyWith(
      color: Colors.transparent,
    ),
  );

  final border = _defect;
  final enabledBorder = _defect;
  final focusedBorder = _defect;
  final errorBorder = _defaultError;
  final focusedErrorBorder = _defaultError;

  _InputBorderSyle._();
}
