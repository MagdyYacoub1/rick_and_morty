import 'package:flutter/material.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/presentation/screens/characters_screen/components/data_line.dart';
import 'package:rick_and_morty/presentation/widgets/character_image.dart';

/// Details area for each Character
class DetailsArea extends StatelessWidget {
  ///Creates details area
  const DetailsArea({
    required this.character,
    super.key,
  });

  ///Index to display
  final Character character;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomChachedImage(
          imageUrl: character.image,
          height: 170,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 5,
              left: 15,
              right: 8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DataLine(
                  title: 'Name',
                  detail: character.name,
                  status: character.status,
                ),
                DataLine(
                  title: 'Species',
                  detail: character.species,
                ),
                if (character.type != '')
                  DataLine(
                    title: 'Type',
                    detail: character.type,
                  ),
                DataLine(
                  title: 'Gender',
                  detail: character.gender,
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
          ),
        ),
      ],
    );
  }
}
