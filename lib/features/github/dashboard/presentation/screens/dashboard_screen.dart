import 'package:auto_route/auto_route.dart';
import 'package:githun_api_commits/app/core/design/design.dart';
import 'package:githun_api_commits/app/gen/assets.gen.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  static const String routeName = '/dashboardScreen';

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 20,
          right: 20,
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                AssetsToken.images.imageHeader.path,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
