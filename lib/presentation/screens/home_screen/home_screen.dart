import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/cubit/home_tab_index_cubit.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/presentation/screens/characters_screen/characters_screen.dart';
import 'package:rick_and_morty/presentation/screens/locations_screen/locations_screen.dart';

/// List of screens which the nav bar will be used to navigate between
List<Widget> screens = [
  const CharactersScreen(),
  const LocationsScreen(),
];

/// Home screens include the bottom nav bar
class HomeScreen extends StatelessWidget {
  /// Home screen
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTabIndexCubit, HomeTabIndexState>(
      builder: (context, state) {
        return Scaffold(
          body: screens[state.tabIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.tabIndex,
            onTap: (value) =>
                context.read<HomeTabIndexCubit>().changeTab(value),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Characters',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.place),
                label: 'Locations',
              ),
            ],
            selectedItemColor: AppColors.teal,
          ),
        );
      },
    );
  }
}
