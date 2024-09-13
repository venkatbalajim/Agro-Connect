import '../../utils/imports.dart';

class NavIcon extends StatelessWidget {
  final IconData name;
  const NavIcon({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    Color color = (Theme.of(context).brightness == Brightness.light)
        ? Colors.green[900]!
        : Colors.green[200]!;

    double iconSize = MediaQuery.of(context).size.width * 0.075;

    return Icon(
      name,
      size: iconSize,
      color: color,
    );
  }
}

class CMainPage extends StatefulWidget {
  const CMainPage({super.key});

  @override
  State<CMainPage> createState() => _CMainPageState();
}

class _CMainPageState extends State<CMainPage> {
  int selectedIndex = 0;
  FocusNode searchFocusNode = FocusNode();
  TextEditingController searchController = TextEditingController();
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();

    searchController.text = '';

    pages = [
      CHomePage(focusNode: searchFocusNode, searchController: searchController),
      const CExplorePage(),
      const CAccountPage(),
      const CCartPage(),
      const CNotificationsPage(),
    ];
  }

  double responsiveHeight(BuildContext context, double percentage) =>
      MediaQuery.of(context).size.height * percentage;
  double responsiveWidth(BuildContext context, double percentage) =>
      MediaQuery.of(context).size.width * percentage;
  double responsiveFontSize(BuildContext context, double baseSize) =>
      baseSize * MediaQuery.of(context).size.width / 400;

  @override
  Widget build(BuildContext context) {
    return PageScreen(
      content: WillPopScope(
        onWillPop: () async {
          SystemNavigator.pop();
          return false;
        },
        child: SafeArea(child: pages[selectedIndex]),
      ),
      bottomNavBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(
            icon: NavIcon(name: Icons.home_outlined),
            selectedIcon: NavIcon(name: Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: NavIcon(name: Icons.explore_outlined),
            selectedIcon: NavIcon(name: Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: NavIcon(name: Icons.account_circle_outlined),
            selectedIcon: NavIcon(name: Icons.account_circle),
            label: 'Account',
          ),
          NavigationDestination(
            icon: NavIcon(name: Icons.shopping_cart_outlined),
            selectedIcon: NavIcon(name: Icons.shopping_cart),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: NavIcon(name: Icons.notifications_outlined),
            selectedIcon: NavIcon(name: Icons.notifications),
            label: 'Notifs',
          ),
        ],
        height: responsiveHeight(context, 0.08),
      ),
    );
  }
}
