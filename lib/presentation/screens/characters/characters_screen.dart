import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants/colors.dart';
import '../../../buisniss_logic/bloc/characters/characters_bloc.dart';
import '../../../data/models/character.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(leading: IconButton(onPressed: onPressed, icon: Icons.arrow_back_sharp),),
      //extendBodyBehindAppBar: true,
      body: BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () {
              return const Center(child: Text("initial"));
            },
            loadInProgress: () =>
                const Center(child: CircularProgressIndicator.adaptive()),
            fetched: (u) {
              return Center(child: Text(u.data![0].name));
            },
            orElse: () => const Center(child: Text("error")),
          );
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Character',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Planet',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: AppColors.teal,
      ),
    );
  }
}
