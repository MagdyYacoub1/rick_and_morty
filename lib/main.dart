import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_and_morty/app_router.dart';
import 'package:rick_and_morty/business_logic/bloc_observer.dart';
import 'package:rick_and_morty/constants/colors.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(
    const MyApp(),
  );
}

///The route widget of the app
class MyApp extends StatefulWidget {
  ///Construct and attch as a root widget to the widget tree
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = AppRouter();

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.teal2,
          brightness: Brightness.dark,
        ),
        fontFamily: 'Orbitron',
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      onGenerateRoute: _router.generateRoute,
    );
  }
}
