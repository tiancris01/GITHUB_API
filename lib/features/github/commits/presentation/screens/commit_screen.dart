// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
          title: const Text('Commits'),
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
                    title: Text(commit.commit.message),
                    subtitle: Text(
                      commit.commit.commitAuthor.name,
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        commit.author.avatarUrl,
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stackTrace) => Center(
            child: Text('Error: $error'),
          ),
        ));
  }
}
