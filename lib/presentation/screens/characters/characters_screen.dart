import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/buisniss_logic/bloc/characters/characters_bloc.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/presentation/screens/characters/components/details_box.dart';

///
class CharactersScreen extends StatefulWidget {
  ///
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
      //appBar: AppBar(leading: IconButton(onPressed: onPressed,
      //icon: Icons.arrow_back_sharp),),
      //extendBodyBehindAppBar: true,
      body: BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, state) {
          return state.maybeWhen(
            loadInProgress: () => const Center(
              child: CircularProgressIndicator(),
            ),
            fetched: (characters) {
              return ListView.builder(
                itemCount: characters.data!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: DetailsBox(
                      character: characters.data![index],
                    ),
                  );
                },
              );
            },
            orElse: () => const Center(child: Text('error')),
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
            icon: Icon(Icons.place),
            label: 'Planet',
          ),
        ],
        selectedItemColor: AppColors.teal,
      ),
    );
  }
}
