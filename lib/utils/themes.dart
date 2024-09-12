import 'imports.dart';

class Themes {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    dialogBackgroundColor: Colors.white,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 25,
      ),
      bodySmall: GoogleFonts.poppins(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      labelSmall: GoogleFonts.poppins(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 13,
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      height: 70,
      backgroundColor: Colors.green[700]!.withOpacity(0.25),
      indicatorColor: Colors.green.withOpacity(0.5),
      labelTextStyle: WidgetStatePropertyAll(
        GoogleFonts.poppins(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.green[900],
      selectionColor: Colors.green[800]!.withOpacity(0.3),
      selectionHandleColor: Colors.green[800],
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF121212),
    dialogBackgroundColor: Colors.grey[900],
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 25,
      ),
      bodySmall: GoogleFonts.poppins(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      labelSmall: GoogleFonts.poppins(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 13,
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      height: 70,
      backgroundColor: Colors.green[700]!.withOpacity(0.25),
      indicatorColor: Colors.green.withOpacity(0.5),
      labelTextStyle: WidgetStatePropertyAll(
        GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.green[800],
      selectionColor: Colors.green[800]!.withOpacity(0.3),
      selectionHandleColor: Colors.green[800],
    ),
  );
}
