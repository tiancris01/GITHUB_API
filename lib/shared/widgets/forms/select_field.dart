import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:githun_api_commits/features/github/dashboard/presentation/providers/dashboard_form_grup.dart';
import 'package:githun_api_commits/shared/widgets/forms/helpers/forms.dart';
import 'package:githun_api_commits/shared/widgets/modals/default_modal.dart';
import 'package:githun_api_commits/shared/widgets/overlay/overlay_manager.dart';
import 'package:githun_api_commits/shared/widgets/forms/select_list.dart';
import 'package:reactive_forms/reactive_forms.dart';

class GithubReactiveSelectField<T extends Object> extends ConsumerWidget {
  final String? hint;
  final String label;
  final List<T> items;
  final String description;
  final String formControlName;
  final String? parentFormControlName;
  final LabelSelectorFunction<T> itemLabelSelector;
  final List<List<SelectableListDescription>>? listSubDescription;
  final Map<String, String Function(dynamic)>? validationMessages;
  final void Function()? selectFunction;

  const GithubReactiveSelectField.builder({
    super.key,
    this.hint,
    this.selectFunction,
    required this.items,
    this.listSubDescription,
    this.validationMessages,
    required this.description,
    this.parentFormControlName,
    required this.formControlName,
    required this.itemLabelSelector,
  }) : label = '';

  const GithubReactiveSelectField.label({
    super.key,
    this.hint,
    required this.label,
    required this.items,
    this.selectFunction,
    this.validationMessages,
    this.listSubDescription,
    required this.description,
    this.parentFormControlName,
    required this.formControlName,
    required this.itemLabelSelector,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userFormControl = ref
        .watch(dashboardFormGrupProvider)
        .controls[parentFormControlName] as FormControl<String>;

    final isUserNameDirty = ref
        .watch(dashboardFormGrupProvider.notifier)
        .isUserNameDirty(userFormControl);
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
