import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:githun_api_commits/app/core/design/design.dart';
import 'package:githun_api_commits/features/github/dashboard/presentation/providers/dashboard_form_grup.dart';
import 'package:githun_api_commits/features/github/dashboard/presentation/providers/deshboard_branches.dart';

typedef LabelSelectorFunction<T extends Object?> = String Function(T item);

class SelectableListBranch<T extends Object?> extends ConsumerStatefulWidget {
  final T? defaultValue;
  final String? parentFormControlName;
  final ValueChanged<T> onItemSelected;
  final LabelSelectorFunction<T> itemLabelSelector;
  final List<List<SelectableListDescription>>? descriptions;

  const SelectableListBranch({
    Key? key,
    this.defaultValue,
    this.descriptions,
    required this.itemLabelSelector,
    required this.onItemSelected,
    this.parentFormControlName,
  }) : super(key: key);

  @override
  ConsumerState<SelectableListBranch<T>> createState() =>
      SelectableListState<T>();
}

class SelectableListState<T extends Object?>
    extends ConsumerState<SelectableListBranch<T>> {
  T? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    final form = ref.watch(dashboardFormControllerProvider);
    final items = ref.watch(deshboarBranchProvider(
        form.control('username').value,
        form.control(widget.parentFormControlName!).value));

    return items.when(data: (data) {
      if (data.isEmpty) {
        return const Center(
          child: Text('No data found for this user'),
        );
      }
      return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return ListTile(
            title: Text(item.branchName),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onTap: () {
              setState(() {
                selectedValue = item as T;
              });
              widget.onItemSelected(item as T);
            },
          );
        },
      );
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }, error: (error, stackTrace) {
      return Center(
          child: Text(
        'Error: An error occurred while trying to fetch the data',
      ));
    });
  }
}

class SelectableListDescription {
  final String title;
  final String description;

  SelectableListDescription(this.title, this.description);
}
