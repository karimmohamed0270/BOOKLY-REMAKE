import 'package:bookly_app/constansts.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/home/presentation/viewsmodel/featured_books_cubit.dart/featured_books_cubit_cubit.dart';
import 'package:bookly_app/features/home/presentation/viewsmodel/newest_books_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
  // catch service locator
  setupServiceLocator();
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          // service locator
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImp>()),
        ),

        BlocProvider(
          // service locator
          create: (context) => NewestBookCubit(getIt.get<HomeRepoImp>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          // add font and dark mode apply for that font
          textTheme: GoogleFonts.cairoTextTheme(ThemeData.dark().textTheme),
        ),

        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
