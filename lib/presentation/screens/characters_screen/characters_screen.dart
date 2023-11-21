import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/bloc/characters/characters_bloc.dart';

import 'package:rick_and_morty/presentation/widgets/faild_state_widget.dart';

import '../../widgets/initial_loading_widget.dart';
import 'components/characters_grid_view.dart';

/// Shows all characters
class CharactersScreen extends StatelessWidget {
  /// Character Screen
  const CharactersScreen({super.key});
  Future<void> refresh(BuildContext context) async {
    context.read<CharactersBloc>().add(const CharacterFetch());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersBloc, CharactersState>(
      builder: (context, state) {
        return state.when(
          characterLoadInProgress: () => const InitialLoadingWidget(),
          characterFetched: (characters) {
            return CharactersGridView(
              characters: characters.data,
            );
          },
          characterLoadMoreInProgress: (characters) {
            return CharactersGridView(
              characters: characters,
            );
          },
          characterEndOfList: () => const Center(
            child: Text(
              'End of list',
              textAlign: TextAlign.center,
            ),
          ),
          characterFaild: (e) => FaildStateWidget(
            messaage: e,
            action: () => refresh(context),
          ),
        );
      },
    );
  }
}
