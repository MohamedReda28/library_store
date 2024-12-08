import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/core/utils/app_Router.dart';
import 'package:project/core/utils/service_loacator.dart';
import 'package:project/feature/Splash/presentation/view/widets/constant.dart';
import 'package:project/feature/home/data/repos/home_repo_impl.dart';
import 'package:project/feature/home/presentation/manger/featuredBooksCubit/featuredbooks_cubit.dart';
import 'package:project/feature/home/presentation/manger/newestBooksCubit/newest_cubit_cubit.dart';

void main() {
  setUp();
  runApp(DevicePreview(
    builder: (BuildContext context) => const BooklyApp(),
  ));
}

class BooklyApp extends StatelessWidget {
  const BooklyApp();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedbooksCubit(getIt.get<HomeRepoImpl>())
              ..fetchFeaturedBooks()),
        BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())
              ..fetchNewestBooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KprimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
