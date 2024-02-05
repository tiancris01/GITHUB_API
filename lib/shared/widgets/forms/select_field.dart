import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:githun_api_commits/shared/widgets/forms/helpers/forms.dart';
import 'package:githun_api_commits/shared/widgets/forms/select_branch_list.dart';
import 'package:githun_api_commits/shared/widgets/forms/select_repo_list.dart';
import 'package:githun_api_commits/shared/widgets/modals/default_modal.dart';
import 'package:githun_api_commits/shared/widgets/overlay/overlay_manager.dart';
import 'package:reactive_forms/reactive_forms.dart';

typedef LabelSelectorFunction<T extends Object?> = String Function(T item);

class GithubReactiveSelectField<T extends Object> extends ConsumerWidget {
  final String? hint;
  final String label;
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
    return Builder(builder: (context) {
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
              label: label,
              hintText: hint,
              isSelecteble: true,
            ),
            onTap: (value) {
              OverlayManager.modal(
                context: context,
                child: DefaultModal.custom(
                  child: SizedBox(
                    height: 300,
                    child: parentFormControlName == 'username'
                        ? SelectableListRepos<T>(
                            itemLabelSelector: itemLabelSelector,
                            parentFormControlName: parentFormControlName,
                            onItemSelected: (_) {
                              value.updateValue(itemLabelSelector.call(_),
                                  emitEvent: true);
                              selectFunction?.call();
                            },
                          )
                        : SelectableListBranch<T>(
                            itemLabelSelector: itemLabelSelector,
                            parentFormControlName: parentFormControlName,
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
    });
  }
}

class SelectableListDescription {
  final String title;
  final String description;

  SelectableListDescription(this.title, this.description);
}
