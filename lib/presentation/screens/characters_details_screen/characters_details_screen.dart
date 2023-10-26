import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/bloc/characters/characters_bloc.dart';
import 'package:rick_and_morty/constants/colors.dart';
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
              floating: true,
              expandedHeight: imageHeight,
              flexibleSpace: FlexibleSpaceBar(
                background: CustomCachedImage(
                  imageUrl: character.image,
                  height: imageHeight,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ExtendedDetails(),
            ),
          ],
        ),
      ),
    );
  }
}
