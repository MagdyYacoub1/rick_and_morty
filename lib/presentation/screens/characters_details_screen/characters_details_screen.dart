import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/bloc/characters/characters_bloc.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/presentation/screens/characters_details_screen/components/extended_details.dart';
import 'package:rick_and_morty/presentation/widgets/custom_cached_image.dart';

///Creates a screen to dispaly each Character details
class CharacterDetailscreen extends StatelessWidget {
  ///Creates a screen to dispaly each Character details
  const CharacterDetailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final character =
        context.read<CharactersBloc>().currentlySelectedCharacter!;
    final imageHeight = MediaQuery.of(context).size.height * 0.4;
    return Scaffold(
      body: ColoredBox(
        color: AppColors.teal.withOpacity(0.3),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              stretch: true,
              floating: false,
              pinned: true,
              expandedHeight: imageHeight,
              flexibleSpace: FlexibleImageArea(
                  character: character, imageHeight: imageHeight),
            ),
            const SliverToBoxAdapter(
              child: ExtendedDetails(),
            ),
          ],
        ),
      ),
    );
  }
}

class FlexibleImageArea extends StatelessWidget {
  const FlexibleImageArea({
    super.key,
    required this.character,
    required this.imageHeight,
  });

  final Character character;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      expandedTitleScale: 1.1,
      titlePadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      title: FittedBox(
        child: Text(character.name),
      ),
      background: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.black,
            ],
          ),
        ),
        position: DecorationPosition.foreground,
        child: CustomCachedImage(
          imageUrl: character.image,
          height: imageHeight,
        ),
      ),
    );
  }
}
