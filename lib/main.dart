import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/application/downloads/bloc/bloc/downloads_bloc.dart';

import 'application/fastlaugh/fastlaugh_bloc.dart';
import 'application/hot_and_new_bloc/hotandnew_bloc.dart';
import 'application/search/search_bloc.dart';
import 'domain/core/di/injectable.dart';
import 'presentation/main_page/screen_mainpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => getIt<FastlaughBloc>()),
        BlocProvider(create: (ctx) => getIt<HotandnewBloc>())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              appBarTheme:
                  const AppBarTheme(backgroundColor: Colors.transparent),
              // fontFamily: GoogleFonts.montserrat().fontFamily,
              scaffoldBackgroundColor: Colors.black,
              primarySwatch: Colors.blue,
              backgroundColor: Colors.black,
              textTheme: const TextTheme(
                  bodyText1: TextStyle(color: Colors.white),
                  bodyText2: TextStyle(color: Colors.white))),
          home: ScreenMainPage()),
    );
  }
}
