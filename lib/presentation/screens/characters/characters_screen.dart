import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/buisniss_logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty/data/models/character.dart';

import 'components/details_box.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late List<Character> allCharacter;

  @override
  void initState() {
    super.initState();
    allCharacter = BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //appBar: AppBar(leading: IconButton(onPressed: onPressed, icon: Icons.arrow_back_sharp),),
      //extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DetailsBox(),
        ],
      ),

      bottomNavigationBar: BottomAppBar(),
    );
  }
}
