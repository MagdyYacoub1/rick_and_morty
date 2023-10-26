import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/bloc/characters/characters_bloc.dart';
import 'package:rick_and_morty/business_logic/cubit/home_tab_index_cubit.dart';
import 'package:rick_and_morty/constants/stings.dart';
import 'package:rick_and_morty/presentation/screens/characters_details_screen/characters_details_screen.dart';
import 'package:rick_and_morty/presentation/screens/characters_screen/characters_screen.dart';
import 'package:rick_and_morty/presentation/screens/home_screen/home_screen.dart';

///Used to manage routes in the app
class AppRouter {
  ///AppRouter to handle navigation around the app
  AppRouter() {
    charactersBloc = CharactersBloc();
  }

  ///Used to expose [CharactersBloc] and inject it in the widget tree
  late CharactersBloc charactersBloc;

  ///Used to generate routs
  Route<MaterialPageRoute<void>> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ConstantStrings.charactersScreen:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => charactersBloc..add(const Fetch()),
              ),
              BlocProvider(
                create: (context) => HomeTabIndexCubit(),
              ),
            ],
            child: const HomeScreen(),
          ),
        );
      case ConstantStrings.characterDetailsScreen:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const CharacterDetailscreen(),
        );
      default:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
    }
  }
}
