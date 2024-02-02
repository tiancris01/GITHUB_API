part of '../design.dart';

class StylesFoundation {
  StylesFoundation._internal();

  static final appBarStyle = _AppBarStyle._();
  static final inputBorderStyle = _InputBorderSyle._();
  static final textButtonStyle = _TextButtonStyle._();
  static final dialogStyle = _DialogStyle._();
  static final elevatedButtonStyle = _ElevatedButtonStyle._();
  static final inputDecorationStyle = _InputDecorationStyle._();

  static const contentPaddingInput =
      EdgeInsets.symmetric(horizontal: 16, vertical: 12);

  static final scrollBehavior =
      const ScrollBehavior().copyWith(physics: const BouncingScrollPhysics());
}

class _DialogStyle {
  final dialogTheme = DialogTheme(
    backgroundColor: ColorsFoundation.background.white,
    surfaceTintColor: ColorsFoundation.background.white,
  );

  _DialogStyle._();
}

class _InputDecorationStyle {
  final inputDecorationCodeValidation = InputDecoration(
    counterText: '',
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: ColorsFoundation.background.gray,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: ColorsFoundation.action.error,
      ),
    ),
  );

  _InputDecorationStyle._();
}

class _AppBarStyle {
  final appBar = AppBarTheme(
    elevation: 5,
    shadowColor: ColorsFoundation.background.gray,
    backgroundColor: ColorsFoundation.background.white,
    surfaceTintColor: ColorsFoundation.background.white,
  );
  _AppBarStyle._();
}

class _TextButtonStyle {
  final textButtonModal = TextButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: ColorsFoundation.text.textButton,
    textStyle: FontsFoundation.buttonTextStyle.buttonText,
    disabledForegroundColor: ColorsFoundation.action.disabled,
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
  );
  _TextButtonStyle._();
}

class _ElevatedButtonStyle {
  final mainElevatedButton = ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: ColorsFoundation.text.whiteText,
    backgroundColor: ColorsFoundation.background.green,
    disabledBackgroundColor: ColorsFoundation.action.disabled,
    textStyle: FontsFoundation.buttonTextStyle.elevatedButtonText,
    disabledForegroundColor: ColorsFoundation.action.disabledWhite,
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
    shape: RoundedRectangleBorder(
      borderRadius: StylesToken.borderR25,
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
