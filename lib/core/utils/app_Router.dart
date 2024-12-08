import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/utils/service_loacator.dart';
import 'package:project/feature/Home/presentation/view/book_details_view.dart';
import 'package:project/feature/Home/presentation/view/home_page.dart';
import 'package:project/feature/SearchView/presentation/view/search_view.dart';
import 'package:project/feature/Splash/presentation/view/widets/splash_view.dart';
import 'package:project/feature/home/data/mdl/book_model/book_model.dart';
import 'package:project/feature/home/data/repos/home_repo_impl.dart';
import 'package:project/feature/home/presentation/manger/SimilerBooksCubit/similer_books_cubit.dart';

// GoRouter configuration
abstract class AppRouter {
  static const KhomeView = '/homeView';
  static const KbookDetailsView = '/bookDetailsView';
  static const KsearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KhomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
          path: KbookDetailsView,
          builder: (context, state) => BlocProvider(
                create: (context) =>
                    SimilerBooksCubit(getIt.get<HomeRepoImpl>()),
                child: BookDetailsView(bookModel: state.extra as BookModel),
              )),
      GoRoute(
        path: KsearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
