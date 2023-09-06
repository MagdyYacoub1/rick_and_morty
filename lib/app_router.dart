import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/buisniss_logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty/constants/stings.dart';
import 'package:rick_and_morty/data/repository/characters_repository.dart';
import 'package:rick_and_morty/data/web_services/character_web_servieces.dart';
import 'package:rick_and_morty/presentation/screens/characters_details_screen.dart';
import 'package:rick_and_morty/presentation/screens/characters/characters_screen.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => charactersCubit,
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
