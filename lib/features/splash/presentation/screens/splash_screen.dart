import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:githun_api_commits/app/gen/assets.gen.dart';
import 'package:githun_api_commits/routes/app_route.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  static const String routeName = '/splashScreen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () async {
      await context.router.pushAndPopUntil(
        const DashboardRoute(),
        predicate: (_) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsToken.icons.githubIcon.path,
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
