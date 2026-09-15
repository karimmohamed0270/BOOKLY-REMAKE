import 'package:bookly_app/constansts.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        // add font and dark mode apply for that font
        textTheme: GoogleFonts.cairoTextTheme(ThemeData.dark().textTheme),
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}
