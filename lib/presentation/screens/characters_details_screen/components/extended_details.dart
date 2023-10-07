import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/bloc/characters/characters_bloc.dart';
import 'package:rick_and_morty/presentation/screens/characters_screen/components/data_line.dart';

/// Extended Details For character detalis screen
class ExtendedDetails extends StatelessWidget {
  /// Extended Details
  const ExtendedDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final character =
        context.read<CharactersBloc>().currentlySelectedCharacter!;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DataLine(
            title: 'Name',
            detail: character.name,
            status: character.status,
            bigger: true,
          ),
          DataLine(
            title: 'Species',
            detail: character.species,
            bigger: true,
          ),
          if (character.type != '')
            DataLine(
              title: 'Type',
              detail: character.type,
              bigger: true,
            ),
          DataLine(
            title: 'Gender',
            detail: character.gender,
            bigger: true,
          ),
          /*DataLine(
            title: 'Origin',
            detail: character.origin.name,
          ),
          DataLine(
            title: 'Location',
            detail: character.location.name,
          ),*/
        ],
      ),
    );
  }
}
