import '../../utils/imports.dart';

class CAccountPage extends StatefulWidget {
  const CAccountPage({super.key});

  @override
  State<CAccountPage> createState() => _CAccountPageState();
}

class _CAccountPageState extends State<CAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Account Page',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
