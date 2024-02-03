import 'package:auto_route/auto_route.dart';
import 'package:githun_api_commits/app/core/design/design.dart';

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
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
