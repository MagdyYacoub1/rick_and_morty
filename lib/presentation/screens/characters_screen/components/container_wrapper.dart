import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/bloc/characters/characters_bloc.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/presentation/screens/characters_details_screen/characters_details_screen.dart';

/// Container Wrapper for the transition of openning a container
class ContainerWrapper extends StatelessWidget {
  /// Opens a container
  const ContainerWrapper({
    required this.character,
    required this.closedCard,
    super.key,
    required this.index,
  });

  /// Character widget to display
  final Character character;

  /// Character Card Disblayed on close
  final Widget closedCard;

  /// Character Card Disblayed on close
  final int index;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      openBuilder: (context2, closedContainer) {
        return BlocProvider.value(
          value: BlocProvider.of<CharactersBloc>(context),
          child: const CharacterDetailscreen(),
        );
      },
      closedColor: Colors.transparent,
      closedShape: BeveledRectangleBorder(
        borderRadius: index % 2 == 0
            ? const BorderRadius.only(
                topLeft: Radius.elliptical(20, 25),
                bottomRight: Radius.elliptical(20, 25),
              )
            : const BorderRadius.only(
                topRight: Radius.elliptical(20, 25),
                bottomLeft: Radius.elliptical(20, 25),
              ),
        side: const BorderSide(
          width: 3,
          color: AppColors.teal,
        ),
      ),
      closedBuilder: (context, openContainer) {
        return InkWell(
          onTap: () {
            context.read<CharactersBloc>().currentlySelectedCharacter =
                character;
            openContainer();
          },
          child: closedCard,
        );
      },
    );
  }
}
