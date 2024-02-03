import 'package:flutter/material.dart';
import 'package:githun_api_commits/app/core/design/design.dart';
import 'package:githun_api_commits/shared/widgets/modals/default_dialog.dart';
import 'package:githun_api_commits/shared/widgets/overlay/overlay_manager.dart';

typedef LabelSelectorFunction<T extends Object?> = String Function(T item);

class SelectableList<T extends Object?> extends StatefulWidget {
  final List<T> items;
  final LabelSelectorFunction<T> itemLabelSelector;
  final List<List<SelectableListDescription>>? descriptions;
  final ValueChanged<T> onItemSelected;
  final T? defaultValue;

  const SelectableList({
    Key? key,
    required this.items,
    required this.itemLabelSelector,
    required this.onItemSelected,
    this.descriptions,
    this.defaultValue,
  }) : super(key: key);

  @override
  State<SelectableList<T>> createState() => _SelectableListState<T>();
}

class _SelectableListState<T extends Object?> extends State<SelectableList<T>> {
  T? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        final item = widget.items[index];
        final description = widget.descriptions?[index] != null
            ? widget.descriptions![index]
            : [];
        return ListTile(
          title: Text(
            widget.itemLabelSelector.call(item),
          ),
          tileColor: ColorsFoundation.quaternary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onTap: () {
            setState(() {
              selectedValue = item;
            });
            widget.onItemSelected(item);
          },
          leading: description.isNotEmpty
              ? GestureDetector(
                  child: const Icon(Icons.info),
                  onTap: () {
                    OverlayManager.dialog(
                      context: context,
                      child: DefaultDialog.title(
                        title: 'Informacion del programa',
                        closeButtonEnable: true,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: description
                                .map(
                                  (e) => Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: e.title,
                                        ),
                                        TextSpan(
                                          text: e.description,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                .toList()),
                      ),
                    );
                  },
                )
              : null,
        );
      },
    );
  }
}

class SelectableListDescription {
  final String title;
  final String description;

  SelectableListDescription(this.title, this.description);
}
