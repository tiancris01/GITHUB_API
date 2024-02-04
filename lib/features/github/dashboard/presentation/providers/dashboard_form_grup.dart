import 'package:githun_api_commits/app/core/design/design.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboar_form_grup.g.dart';

@riverpod
class DashboardFormGrup extends _$DashboardFormGrup {
  @override
  FormGroup build() {
    final form = FormGroup({
      'username': FormControl<String>(
        validators: [Validators.required],
      ),
      'repos': FormControl<String>(
        disabled: true,
        validators: [Validators.required],
      ),
      // 'branch': FormControl<String>(
      //   validators: [Validators.required],
      // ),
    });
    return form;
  }

  bool isUserNameDirty(FormControl formControl) {
    return formControl.dirty;
  }
}
