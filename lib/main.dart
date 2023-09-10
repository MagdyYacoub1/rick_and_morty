import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_and_morty/app_router.dart';
import 'package:rick_and_morty/buisniss_logic/bloc_observer.dart';

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
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: ThemeData.dark().textTheme.bodyLarge!.copyWith(
                fontFamily: 'Orbitron',
              ),
          bodyMedium: ThemeData.dark().textTheme.bodyMedium!.copyWith(
                fontFamily: 'Orbitron',
              ),
        ),
      ),
      onGenerateRoute: _appRouter.generateRoute,
    );
  }
}
