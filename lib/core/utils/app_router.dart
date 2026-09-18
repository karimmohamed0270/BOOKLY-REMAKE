import 'package:bookly_app/features/home/presentation/views/book_detail_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/search_view.dart';
import 'package:bookly_app/features/splach/presentation/views/splach_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplachView()),
      GoRoute(path: '/home', builder: (context, state) => HomeView()),
      GoRoute(path: '/search', builder: (context, state) => SearchView()),
      GoRoute(path: '/detail', builder: (context, state) => BookDetailView()),
    ],
  );
}
