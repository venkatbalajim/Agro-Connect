import '../../utils/imports.dart';

class CNotificationsPage extends StatefulWidget {
  const CNotificationsPage({super.key});

  @override
  State<CNotificationsPage> createState() => _CNotificationsPageState();
}

class _CNotificationsPageState extends State<CNotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Notifications Page',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
