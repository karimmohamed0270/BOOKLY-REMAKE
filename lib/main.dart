import 'package:bookly_app/constansts.dart';
import 'package:bookly_app/features/splach/presentation/views/splach_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        // add font and dark mode apply for that font
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
      ),

      debugShowCheckedModeBanner: false,
      home: SplachView(),
    );
  }
}
