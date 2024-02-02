part of '../design.dart';

class FontsFoundation {
  FontsFoundation._internal();

  static final textStyle = _TextStyle._();
  static final buttonTextStyle = _ButtonTextStyle._();
  static final textFieldStyle = _TextFieldStyle._();
  static final modal = _ModalStyle._();
}

class _ModalStyle {
  final menuItemText =
      FontsToken.interSb16.copyWith(color: ColorsFoundation.text.blackText);

  _ModalStyle._();
}

class _TextStyle {
  final headlineLarge =
      FontsToken.interB32.copyWith(color: ColorsFoundation.text.blackText);
  final headlineSmall =
      FontsToken.interB24.copyWith(color: ColorsFoundation.text.blackText);
  final titleLarge = FontsToken.interB20.copyWith(
    color: ColorsFoundation.text.blackText,
  );
  final titleMedium = FontsToken.interSb16.copyWith(
    color: ColorsFoundation.text.greenText,
  );
  final titleSmall = FontsToken.interSb14.copyWith(
    color: ColorsFoundation.text.blackText,
  );
  final bodyLarge = FontsToken.interR16.copyWith(
    color: ColorsFoundation.text.blackText,
  );
  final bodyMedium = FontsToken.interR14.copyWith(
    color: ColorsFoundation.text.blackText,
  );
  final bodySmall = FontsToken.interR12.copyWith(
    color: ColorsFoundation.text.blackText,
  );
  _TextStyle._();
}

class _ButtonTextStyle {
  final buttonText =
      FontsToken.interB16.copyWith(color: ColorsFoundation.text.textButton);
  final elevatedButtonText =
      FontsToken.interB16.copyWith(color: ColorsFoundation.text.whiteText);

  _ButtonTextStyle._();
}

class _TextFieldStyle {
  final hitTextStyle =
      FontsToken.interR16.copyWith(color: ColorsFoundation.text.blackText);
  final inputTextStyle = FontsToken.interSb16
      .copyWith(color: ColorsFoundation.text.inputTextFieldColor);
  final errorTextStyle =
      FontsToken.interSb16.copyWith(color: ColorsFoundation.text.negativeText);
  final labelTextField = FontsToken.interR16
      .copyWith(color: ColorsFoundation.text.labelTextFieldColor);
  _TextFieldStyle._();
}
