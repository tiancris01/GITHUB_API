import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:githun_api_commits/app/core/design/design.dart';
import 'package:githun_api_commits/app/gen/assets.gen.dart';
import 'package:githun_api_commits/features/github/core/domain/entities/branches/repo_branches.dart';
import 'package:githun_api_commits/features/github/core/domain/entities/repos/github_repos.dart';
import 'package:githun_api_commits/features/github/dashboard/presentation/providers/dashboard_form_grup.dart';
import 'package:githun_api_commits/shared/widgets/forms/select_field.dart';
import 'package:githun_api_commits/shared/widgets/forms/text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class DashboardScreen extends ConsumerStatefulWidget {
  static const String routeName = '/dashboardScreen';

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final form = ref.watch(dashboardFormControllerProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 40,
          right: 40,
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                AssetsToken.images.imageHeader.path,
              ),
              const SizedBox(height: 40),
              ReactiveForm(
                formGroup: form,
                child: Column(
                  children: [
                    const GithubReactiveTextField(
                      label: 'Github user name',
                      formControlName: 'username',
                      hintText: 'Github user name',
                    ),
                    const SizedBox(height: 20),
                    GithubReactiveSelectField<GithubRepos>.label(
                      label: 'Select a repository',
                      formControlName: 'repos',
                      hint: 'Select a repository',
                      description: '',
                      itemLabelSelector: (item) {
                        return item.repoName;
                      },
                      selectFunction: () {
                        context.router.pop();
                      },
                      parentFormControlName: 'username',
                    ),
                    const SizedBox(height: 20),
                    GithubReactiveSelectField<RepoBranches>.label(
                      label: 'Select a branch',
                      formControlName: 'branch',
                      hint: 'Select a branch',
                      description: '',
                      itemLabelSelector: (item) {
                        return item.branchName;
                      },
                      selectFunction: () {
                        context.router.pop();
                      },
                      parentFormControlName: 'repos',
                    ),
                    const SizedBox(height: 20),
                    ReactiveFormConsumer(builder: (context, form, child) {
                      return ElevatedButton(
                        onPressed: form.valid ? () {} : null,
                        child: const Text('Search'),
                      );
                    }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
