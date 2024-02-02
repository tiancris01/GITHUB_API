part of '../design.dart';

class ColorsFoundation {
  ColorsFoundation._internal();

  static const primary = ColorsToken.green;

  static const background = _Background._();
  static const text = _Text._();
  static const icon = _Icon._();
  static const action = _Action._();
}

class _Background {
  final Color white = ColorsToken.white;
  final Color black = ColorsToken.black;
  final Color green = ColorsToken.green;
  final Color gray = ColorsToken.gray;

  const _Background._();
}

class _Action {
  // final Color informative = ColorsToken.orange1;
  final Color success = ColorsToken.green;
  final Color error = ColorsToken.red;
  final Color disabled = ColorsToken.gray;
  final Color disabledWhite = ColorsToken.white;

  const _Action._();
}

class _Text {
  final Color whiteText = ColorsToken.white;
  final Color blackText = ColorsToken.black;
  final Color greenText = ColorsToken.green;
  final Color textButton = ColorsToken.black;
  final Color inputTextFieldColor = ColorsToken.black;
  final Color labelTextFieldColor = ColorsToken.gray;
  final Color negativeText = ColorsToken.red;

  const _Text._();
}

class _Icon {
  final Color white = ColorsToken.white;
  final Color textFildArrow = ColorsToken.black;
  final Color greenIcon = ColorsToken.green;

  const _Icon._();
}
