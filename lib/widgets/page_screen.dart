import '../utils/imports.dart';

class PageScreen extends StatefulWidget {
  final Widget content;
  final Widget? bottomNavBar;
  final Widget? floatingButton;

  const PageScreen({
    super.key,
    required this.content,
    this.bottomNavBar,
    this.floatingButton,
  });

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  @override
  Widget build(BuildContext context) {
    Brightness contrastBrightness = Brightness.dark;
    if (Theme.of(context).brightness == Brightness.dark) {
      contrastBrightness = Brightness.light;
    } else {
      contrastBrightness = Brightness.dark;
    }

    return Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: contrastBrightness,
          statusBarIconBrightness: contrastBrightness,
          statusBarColor: Theme.of(context).scaffoldBackgroundColor,
          systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
          systemNavigationBarDividerColor: Colors.transparent,
        ),
        child: widget.content,
      ),
      bottomNavigationBar: widget.bottomNavBar,
      floatingActionButton: widget.floatingButton,
    );
  }
}
