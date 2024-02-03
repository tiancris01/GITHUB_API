import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboar_form_grup.g.dart';

@riverpod
class DashboardFormGrup extends _$DashboardFormGrup {
  @override
  FormGroup build() {
    final form = FormGroup({
      'username': FormControl<String>(
        validators: [Validators.required, Validators.pattern(r'^[a-zA-Z]+$')],
      ),
      'repos': FormControl<String>(
        validators: [Validators.required],
      ),
      'branch': FormControl<String>(
        validators: [Validators.required],
      ),
    });
    return form;
  }
}
