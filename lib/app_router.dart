import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'buisniss_logic/bloc/characters/characters_bloc.dart';
import 'constants/stings.dart';
import 'data/repository/characters_repository.dart';
import 'presentation/screens/characters/characters_screen.dart';
import 'presentation/screens/characters_details_screen.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersBloc charactersBloc;

  AppRouter() {
    charactersBloc = CharactersBloc();
  }

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => charactersBloc..add(const Fetch()),
            child: const CharactersScreen(),
          ),
        );
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => const CharacterDetailscreen());
      default:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
    }
  }
}
