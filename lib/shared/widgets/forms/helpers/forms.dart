import 'package:githun_api_commits/app/core/design/design.dart';

class GithubForms {
  static Map<String, String Function(dynamic error)> validationMessages() {
    return {
      'required': requiredMessage(),
      'number': numberMessage(),
      'max': numberMax(),
      'min': numberMin(),
      'pattern': pattern(),
      'email': email(),
      'typeDocumentVerify': typeDocumentVerify(),
      'addressVerify': addressVerify(),
      'minLength': minLength(),
      'maxLength': maxLength(),
    };
  }

  static Map<String, String Function(dynamic error)>
      validationMessagesWithParameters(
    Map<String, String Function(dynamic error)> validators,
  ) {
    return {
      ...validationMessages(),
      ...validators,
    };
  }

  static TextInputType keyBoarTypeByFormControl(String? formControlName) {
    switch (formControlName) {
      case 'email':
        return TextInputType.emailAddress;
      case 'phone':
        return TextInputType.phone;
      case 'number':
        return TextInputType.number;
      case 'password':
        return TextInputType.visiblePassword;
      default:
        return TextInputType.text;
    }
  }

  static String Function(dynamic error) requiredMessage() {
    return (error) => 'Requerido';
  }

  static String Function(dynamic error) numberMessage() {
    return (error) => 'Debe ser un número';
  }

  static String Function(dynamic error) numberMax() {
    return (error) => '$error';
  }

  static String Function(dynamic error) numberMin() {
    return (error) => '$error';
  }

  static String Function(dynamic error) maxLength() {
    return (error) => '${error['actualLength']}/${error['requiredLength']}';
  }

  static String Function(dynamic error) minLength() {
    return (error) => '${error['actualLength']}/${error['requiredLength']}';
  }

  static String Function(dynamic error) pattern() {
    return (error) {
      Map<String, String> patternMessages = {
        r'^[a-zA-Z0-9 ]+$': 'Solo se permiten letras y números.',
        r'^[a-zA-Z]+$': 'Solo se permiten letras.',
        r'^[0-9]+$': 'Solo se permiten números.',
      };

      String pattern = error['requiredPattern'];
      return patternMessages[pattern] ??
          'Debe coincidir con el patrón: "$pattern"';
    };
  }

  static String Function(dynamic error) email() {
    return (error) => 'Correo electrónico incorrecto';
  }

  static String Function(dynamic error) typeDocumentVerify() {
    return (error) => 'Documento incorrecto';
  }

  static String Function(dynamic error) addressVerify() {
    return (error) => 'Dirección incorrecta';
  }

  static InputDecoration decorationSelect({
    bool isSelecteble = false,
    String? label,
    String? hintText,
  }) {
    return InputDecoration(
      labelText: label,
      suffixIcon: isSelecteble
          ? const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.keyboard_arrow_down_rounded,
                  size: 40, color: ColorsFoundation.primary),
            )
          : null,
      hintText: hintText ?? 'Seleccionar',
      hintStyle: FontsFoundation.lightTextTheme.displayLarge!.copyWith(
        color: ColorsFoundation.secondary,
      ),
    );
  }
}
