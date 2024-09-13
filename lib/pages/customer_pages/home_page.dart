import '../../utils/imports.dart';

class CHomePage extends StatefulWidget {
  final FocusNode focusNode;
  final TextEditingController searchController;
  const CHomePage({
    super.key,
    required this.focusNode,
    required this.searchController,
  });

  @override
  State<CHomePage> createState() => _CHomePageState();
}

class _CHomePageState extends State<CHomePage> {
  double responsiveHeight(BuildContext context, double percentage) =>
      MediaQuery.of(context).size.height * percentage;
  double responsiveWidth(BuildContext context, double percentage) =>
      MediaQuery.of(context).size.width * percentage;
  double responsiveFontSize(BuildContext context, double baseSize) =>
      baseSize * MediaQuery.of(context).size.width / 400;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(height: responsiveHeight(context, 0.02)),
        SizedBox(
          width: screenWidth - responsiveWidth(context, 0.075),
          height: responsiveHeight(context, 0.06),
          child: SearchBar(
            controller: widget.searchController,
            hintText: 'Search here ...',
            hintStyle: WidgetStatePropertyAll(
              GoogleFonts.poppins(
                fontSize: responsiveFontSize(context, 15),
              ),
            ),
            focusNode: widget.focusNode,
            onTapOutside: (event) {
              widget.focusNode.unfocus();
            },
            trailing: [
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: responsiveFontSize(context, 20),
                ),
                onPressed: () {
                  // Perform search action
                },
              ),
            ],
            backgroundColor: WidgetStateProperty.all(
              (Theme.of(context).brightness == Brightness.dark)
                  ? Colors.grey[900]
                  : Colors.white,
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                  color: Colors.grey[800]!,
                  width: responsiveWidth(context, 0.0035),
                ),
              ),
            ),
            shadowColor: WidgetStateProperty.all(
              Colors.transparent,
            ),
          ),
        ),
        SizedBox(height: responsiveHeight(context, 0.02)),
        Expanded(
          child: Center(
            child: Text(
              'Home Page',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        )
      ],
    );
  }
}
