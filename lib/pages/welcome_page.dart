import 'package:agro_connect/pages/customer_pages/main_page.dart';

import '../utils/imports.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> carouselItems = [
      {
        'image': 'assets/images/fruit_basket.svg',
        'title':
            'Welcome to Agro-Connect, where freshness meets affordability.',
        'description':
            'Connecting you directly with nearby farmers for fresh and affordable groceries.',
      },
      {
        'image': 'assets/images/farmers_market.svg',
        'title':
            'Farm-to-table Revolution: Bridging the gap between farmers and consumers.',
        'description':
            'No middlemen, just fair prices and support for our farming community.',
      },
      {
        'image': 'assets/images/ontime_delivery.svg',
        'title': 'Get your groceries delivered right at your doorstep.',
        'description':
            'Enjoy the convenience of fresh farm-sourced produce delivered straight to your home.',
      },
    ];

    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    // Make proportions based on screen size
    double responsiveHeight(double percentage) => screenHeight * percentage;
    double responsiveWidth(double percentage) => screenWidth * percentage;
    double responsiveFontSize(double baseSize) => baseSize * screenWidth / 400;

    return PageScreen(
      content: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: responsiveHeight(0.02)),
              SizedBox(
                height: responsiveHeight(0.75),
                width: screenWidth,
                child: CarouselSlider.builder(
                  itemCount: carouselItems.length,
                  itemBuilder: (context, index, realIndex) {
                    final item = carouselItems[index];
                    return Container(
                      alignment: Alignment.center,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: responsiveWidth(0.005),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12.0),
                              ),
                              child: SvgPicture.asset(
                                item['image']!,
                                height: responsiveHeight(0.4),
                              ),
                            ),
                            SizedBox(height: responsiveHeight(0.02)),
                            Text(
                              item['title']!,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontSize: responsiveFontSize(20),
                                  ),
                            ),
                            SizedBox(height: responsiveHeight(0.02)),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: responsiveWidth(0.05)),
                              child: Text(
                                item['description']!,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontSize: responsiveFontSize(14),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: responsiveHeight(0.7),
                    enlargeCenterPage: true,
                    initialPage: 0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: responsiveHeight(0.01)), // 1% height
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  carouselItems.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin:
                        EdgeInsets.symmetric(horizontal: responsiveWidth(0.01)),
                    width: currentIndex == index
                        ? responsiveWidth(0.03)
                        : responsiveWidth(0.02),
                    height: currentIndex == index
                        ? responsiveWidth(0.03)
                        : responsiveWidth(0.02),
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? Theme.of(context).colorScheme.secondary
                          : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              SizedBox(height: responsiveHeight(0.03)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: responsiveWidth(0.1)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      SlideTransitionRoute(page: const CMainPage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green[800]),
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(
                        horizontal: responsiveWidth(0.15),
                        vertical: responsiveHeight(0.02),
                      ),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    splashFactory: NoSplash.splashFactory,
                  ),
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.poppins(
                      fontSize: responsiveFontSize(18),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: responsiveHeight(0.02)),
            ],
          ),
        ),
      ),
    );
  }
}
