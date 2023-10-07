import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/presentation/widgets/character_image.dart';

///Creates a screen to dispaly each Character details
class CharacterDetailscreen extends StatelessWidget {
  ///Creates a screen to dispaly each Character details
  const CharacterDetailscreen({required this.character, super.key});

  /// Character object to be displayed
  final Character character;
  @override
  Widget build(BuildContext context) {
    final imageHeight = MediaQuery.of(context).size.height * 0.35;
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            stretch: true,
            expandedHeight: imageHeight,
            flexibleSpace: FlexibleSpaceBar(
              background: CustomChachedImage(
                imageUrl: character.image,
                height: imageHeight,
              ),
            ),
          ),
          SliverFillRemaining(
            child: ColoredBox(
              color: AppColors.teal.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}
