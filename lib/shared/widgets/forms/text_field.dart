import 'package:flutter/material.dart';
import 'package:githun_api_commits/shared/widgets/forms/helpers/forms.dart';
import 'package:reactive_forms/reactive_forms.dart';

class GithubReactiveTextField extends StatelessWidget {
  final String label;
  final String? hintText;
  final String formControlName;
  final Map<String, String Function(dynamic)>? validationMessages;
  final TextInputType? keyboardType;
  final int? minLines;
  final int? maxLines;

  const GithubReactiveTextField({
    super.key,
    required this.label,
    required this.formControlName,
    this.validationMessages,
    this.keyboardType,
    this.hintText,
    this.minLines,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        ReactiveTextField(
          minLines: minLines ?? 1,
          maxLines: maxLines ?? 1,
          formControlName: formControlName,
          validationMessages: validationMessages == null
              ? GithubForms.validationMessages()
              : GithubForms.validationMessagesWithParameters(
                  validationMessages!),
          keyboardType: keyboardType ??
              GithubForms.keyBoarTypeByFormControl(formControlName),
          decoration: InputDecoration(hintText: hintText),
        ),
      ],
    );
  }
}
