import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/bloc/characters/characters_bloc.dart';
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
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        context.read<CharactersBloc>().add(const FetchMore());
      }
    });
  }

  Future<void> refresh() async {
    context.read<CharactersBloc>().add(const Fetch());
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
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
                controller: scrollController,
                itemCount: characters.data!.length + 1,
                itemBuilder: (context, index) {
                  return index < characters.data!.length
                      ? Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: DetailsBox(
                            character: characters.data![index],
                          ),
                        )
                      : const Padding(
                          padding: EdgeInsets.symmetric(vertical: 32),
                          child: Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        );
                },
              );
            },
            endOfList: () => const Center(
              child: Text(
                'End of list',
                textAlign: TextAlign.center,
              ),
            ),
            faild: (e) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    e,
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: refresh,
                    child: const Text('Refresh'),
                  ),
                ],
              ),
            ),
            orElse: () => const Center(
              child: Text(
                'error',
                textAlign: TextAlign.center,
              ),
            ),
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
