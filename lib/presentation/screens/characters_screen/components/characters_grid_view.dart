import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/presentation/screens/characters_screen/components/details_area.dart';

import '../../../../business_logic/bloc/characters/characters_bloc.dart';
import '../../../../data/models/character.dart';
import 'container_wrapper.dart';

class CharactersGridView extends StatefulWidget {
  const CharactersGridView({
    super.key,
    required this.characters,
  });
  final List<Character> characters;

  @override
  State<CharactersGridView> createState() => _CharactersGridViewState();
}

class _CharactersGridViewState extends State<CharactersGridView> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        fetchDataByStateType();
      }
    });
  }

  void fetchDataByStateType() {
    context.read<CharactersBloc>().state.mapOrNull(
          characterFetched: (_) => context.read<CharactersBloc>().add(
                const CharacterFetchMore(),
              ),
          characterEndOfList: (_) => {},
        );
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const aspectRatio = 0.66;
        return GridView.builder(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: aspectRatio,
          ),
          itemCount: widget.characters.length + 1,
          itemBuilder: (context, index) {
            return index < widget.characters.length
                ? ContainerWrapper(
                    index: index,
                    character: widget.characters[index],
                    closedCard: DetailsArea(
                      character: widget.characters[index],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: Center(
                      child: context.read<CharactersBloc>().state.maybeWhen(
                            orElse: () => const SizedBox(),
                            characterLoadMoreInProgress: (_) =>
                                const CircularProgressIndicator.adaptive(),
                            characterEndOfList: (_) => const Text(
                              'End of list',
                              textAlign: TextAlign.center,
                            ),
                          ),
                    ),
                  );
          },
        );
      },
    );
  }
}
