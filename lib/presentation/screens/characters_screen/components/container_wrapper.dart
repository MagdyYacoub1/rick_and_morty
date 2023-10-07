import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/presentation/screens/characters_details_screen/characters_details_screen.dart';
import 'package:rick_and_morty/presentation/screens/characters_screen/components/details_box.dart';

/// Container Wrapper for the transition of openning a container
class ContainerWrapper extends StatelessWidget {
  /// Opens a container
  const ContainerWrapper({
    required this.character,
    super.key,
  });

  /// Character widget to display
  final Character character;

  /// Character Card Disblayed on close
  //final Widget closedCard;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      openBuilder: (context, closedContainer) {
        return CharacterDetailscreen(character: character);
      },
      closedColor: Colors.transparent,
      closedShape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
          width: 3,
          color: AppColors.teal,
        ),
      ),
      closedBuilder: (context, openContainer) {
        return InkWell(
          onTap: () => openContainer(),
          child: DetailsBox(character: character),
        );
      },
    );
  }
}
