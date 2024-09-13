import '../../utils/imports.dart';

class CCartPage extends StatefulWidget {
  const CCartPage({super.key});

  @override
  State<CCartPage> createState() => _CCartPageState();
}

class _CCartPageState extends State<CCartPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Cart Page',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
