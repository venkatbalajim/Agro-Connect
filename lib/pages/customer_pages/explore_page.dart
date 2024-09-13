import '../../utils/imports.dart';

class CExplorePage extends StatefulWidget {
  const CExplorePage({super.key});

  @override
  State<CExplorePage> createState() => _CExplorePageState();
}

class _CExplorePageState extends State<CExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Explore Page',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
