import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_and_morty/app_router.dart';
import 'package:rick_and_morty/business_logic/bloc_observer.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(
    MyApp(),
  );
}

///The route widget of the app
class MyApp extends StatelessWidget {
  ///Construct and attch as a root widget to the widget tree
  MyApp({super.key}) : _appRouter = AppRouter();

  final AppRouter _appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Orbitron',
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      onGenerateRoute: _appRouter.generateRoute,
    );
  }
}
