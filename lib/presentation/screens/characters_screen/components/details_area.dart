import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/presentation/screens/characters_screen/components/data_line.dart';
import 'package:rick_and_morty/presentation/widgets/custom_cached_image.dart';

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
    const imageHeight = 170.0;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: imageHeight,
          child: Stack(
            fit: StackFit.expand,
            children: [
              DecoratedBox(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                      AppColors.gray,
                    ],
                  ),
                ),
                position: DecorationPosition.foreground,
                child: CustomCachedImage(
                  imageUrl: character.image,
                  height: imageHeight,
                ),
              ),
              Positioned(
                bottom: 5,
                left: 10,
                child: FittedBox(
                  child: Text(
                    character.name,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 15,
              right: 8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DataLine(
                  title: 'Species',
                  detail: character.species,
                  status: character.status,
                ),
                const SizedBox(height: 7),
                /*Column(
                    children: [
                      DataLine(
                        title: 'Type',
                        detail: character.type,
                      ),
                      const SizedBox(height: 7),
                    ],
                  ),*/
                DataLine(
                  title: 'Gender',
                  detail: character.gender,
                ),
                const SizedBox(height: 7),
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
