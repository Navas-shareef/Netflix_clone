import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/main_page/screen_mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
            // fontFamily: GoogleFonts.montserrat().fontFamily,
            scaffoldBackgroundColor: Colors.black,
            primarySwatch: Colors.blue,
            backgroundColor: Colors.black,
            textTheme: const TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                bodyText2: TextStyle(color: Colors.white))),
        home: ScreenMainPage());
  }
}
