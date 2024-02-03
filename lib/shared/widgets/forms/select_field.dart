import 'package:flutter/material.dart';
import 'package:githun_api_commits/shared/widgets/forms/helpers/forms.dart';
import 'package:githun_api_commits/shared/widgets/modals/default_modal.dart';
import 'package:githun_api_commits/shared/widgets/overlay/overlay_manager.dart';
import 'package:githun_api_commits/shared/widgets/forms/select_list.dart';
import 'package:reactive_forms/reactive_forms.dart';

class GithubReactiveSelectField<T extends Object> extends StatelessWidget {
  final String label;
  final String formControlName;
  final String description;
  final List<T> items;
  final LabelSelectorFunction<T> itemLabelSelector;
  final List<List<SelectableListDescription>>? listSubDescription;
  final String? hint;
  final Map<String, String Function(dynamic)>? validationMessages;
  final void Function()? selectFunction;

  const GithubReactiveSelectField.builder({
    super.key,
    required this.formControlName,
    this.validationMessages,
    this.listSubDescription,
    required this.description,
    required this.items,
    required this.itemLabelSelector,
    this.hint,
    this.selectFunction,
  }) : label = '';

  const GithubReactiveSelectField.label({
    super.key,
    required this.label,
    required this.formControlName,
    this.validationMessages,
    this.listSubDescription,
    required this.description,
    required this.items,
    required this.itemLabelSelector,
    this.hint,
    this.selectFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReactiveTextField<String>(
          formControlName: formControlName,
          validationMessages: validationMessages == null
              ? GithubForms.validationMessages()
              : GithubForms.validationMessagesWithParameters(
                  validationMessages!),
          readOnly: true,
          decoration: GithubForms.decorationSelect(
            hintText: hint,
          ),
          onTap: (value) {
            OverlayManager.modal(
              context: context,
              child: DefaultModal.custom(
                child: SizedBox(
                  height: 300,
                  child: SelectableList<T>(
                    items: items,
                    itemLabelSelector: itemLabelSelector,
                    descriptions: listSubDescription,
                    onItemSelected: (_) {
                      value.updateValue(itemLabelSelector.call(_),
                          emitEvent: true);
                      selectFunction?.call();
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
