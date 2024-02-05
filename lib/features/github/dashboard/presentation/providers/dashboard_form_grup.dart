import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_form_grup.g.dart';

@riverpod
FormGroup dashboardFormController(DashboardFormControllerRef ref) {
  final form = ref.watch(dashboardFormGroupProvider);
  ref.watch(controlStatusReposProvider);
  ref.watch(controlStatusBranchProvider);
  return form;
}

@riverpod
FormGroup dashboardFormGroup(DashboardFormGroupRef ref) {
  final form = FormGroup({
    'username': FormControl<String>(
      validators: [Validators.required],
    ),
    'repos': FormControl<String>(
      disabled: true,
      validators: [Validators.required],
    ),
    'branch': FormControl<String>(
      disabled: true,
      validators: [Validators.required],
    ),
  });
  return form;
}

@riverpod
Stream<ControlStatus> controlStatusRepos(ControlStatusReposRef ref) async* {
  final form = ref.watch(dashboardFormGroupProvider);
  await for (final status in form.controls['username']!.statusChanged) {
    if (status != ControlStatus.invalid) {
      form.controls['repos']!.markAsEnabled();
    } else {
      form.controls['repos']!.markAsDisabled();
      form.controls['repos']!.reset();
    }
    yield status;
  }
}

@riverpod
Stream<ControlStatus> controlStatusBranch(ControlStatusBranchRef ref) async* {
  final form = ref.watch(dashboardFormGroupProvider);
  await for (final status in form.controls['repos']!.statusChanged) {
    if (status != ControlStatus.invalid && status != ControlStatus.disabled) {
      form.controls['branch']!.markAsEnabled();
    } else {
      form.controls['branch']!.markAsDisabled();
      form.controls['branch']!.reset();
    }
    yield status;
  }
  return;
}
