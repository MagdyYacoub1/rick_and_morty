import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../business_logic/bloc/characters/characters_bloc.dart';
import '../../../../data/models/character.dart';
import 'container_wrapper.dart';
import 'details_box.dart';

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
        context.read<CharactersBloc>().add(const CharacterFetchMore());
      }
    });
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
        const aspectRatio = 0.55;
        final width = constraints.maxWidth;
        final itemHeight = (width * 0.5) / aspectRatio;
        final height = constraints.maxHeight + itemHeight;
        return OverflowBox(
          maxHeight: height,
          minHeight: height,
          maxWidth: width,
          minWidth: width,
          child: GridView.builder(
            controller: scrollController,
            cacheExtent: 10,
            padding: EdgeInsets.symmetric(
              vertical: itemHeight * 0.5,
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
                  ? Transform.translate(
                      offset: Offset(
                        0,
                        index.isOdd ? itemHeight * 0.5 : 0.0,
                      ),
                      child: ContainerWrapper(
                        character: widget.characters[index],
                        closedCard: DetailsBox(
                          character: widget.characters[index],
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Center(
                        child: context.read<CharactersBloc>().state.maybeWhen(
                              orElse: () => const SizedBox(),
                              characterLoadMoreInProgress: (_) =>
                                  const CircularProgressIndicator.adaptive(),
                              characterEndOfList: () => const Text(
                                'End of list',
                                textAlign: TextAlign.center,
                              ),
                            ),
                      ),
                    );
            },
          ),
        );
      },
    );
  }
}
