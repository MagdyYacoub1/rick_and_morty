import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/presentation/screens/characters/components/data_line.dart';

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
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.55,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CharcaterImage(imageUrl: character.image),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 12,
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
                DataLine(
                  title: 'Origin',
                  detail: character.origin.name,
                ),
                DataLine(
                  title: 'Location',
                  detail: character.location.name,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

///
class CharcaterImage extends StatelessWidget {
  ///
  const CharcaterImage({
    required this.imageUrl,
    super.key,
  });

  ///
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: size.width * 0.55,
      height: 200,
      placeholderFadeInDuration: const Duration(milliseconds: 800),
      fadeInDuration: const Duration(milliseconds: 700),
      fadeOutDuration: const Duration(milliseconds: 500),
      placeholder: (context, url) => Align(
        alignment: Alignment.topCenter,
        child: LinearProgressIndicator(
          minHeight: 10,
          color: AppColors.teal,
          backgroundColor: AppColors.teal.withOpacity(0.3),
        ),
      ),
      fit: BoxFit.cover,
    );
  }
}
