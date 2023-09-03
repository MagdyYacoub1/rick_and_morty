import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants/stings.dart';
import 'package:rick_and_morty/presentation/screens/characters_details_screen.dart';
import 'package:rick_and_morty/presentation/screens/characters_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => const CharacterDetailscreen());
      default:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
    }
  }
}
