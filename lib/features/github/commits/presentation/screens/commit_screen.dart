// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:githun_api_commits/app/core/design/design.dart';

import 'package:githun_api_commits/features/github/commits/presentation/providers/commit_prov.dart';

@RoutePage()
class CommitScreen extends ConsumerStatefulWidget {
  final String userName;
  final String repo;
  final String branch;

  static const String routeName = '/commitScreen';
  const CommitScreen({
    required this.userName,
    required this.repo,
    required this.branch,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CommitScreenState();
}

class _CommitScreenState extends ConsumerState<CommitScreen> {
  @override
  Widget build(BuildContext context) {
    final commits = ref.watch(
      commitProvider(
        widget.userName,
        widget.repo,
        widget.branch,
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  widget.repo.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: ColorsFoundation.quaternary),
                ),
                Text(widget.userName.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: ColorsFoundation.primary)),
              ],
            ),
          ),
        ),
        body: commits.when(
          data: (commits) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.separated(
                itemCount: commits.length,
                itemBuilder: (context, index) {
                  final commit = commits[index];
                  return ListTile(
                    visualDensity: VisualDensity.compact,
                    title: Text(
                      commit.commit.message,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: ColorsFoundation.primary,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          commit.commit.commitAuthor.name,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: ColorsFoundation.quaternary),
                        ),
                        Text(
                          commit.commit.commitAuthor.date,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: ColorsFoundation.secondary),
                        ),
                      ],
                    ),
                    leading: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: NetworkImage(
                        commit.author.avatarUrl,
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 1,
                    color: ColorsFoundation.secondary,
                  );
                },
              ),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stackTrace) => const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.error_outline_sharp,
                    size: 80, color: ColorsFoundation.error),
                Text(
                  'Upss! Something went wrong!\nPlease try again!',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ));
  }
}
