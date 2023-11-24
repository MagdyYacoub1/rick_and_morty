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

/// List of screens titles which the app bar will be used to display
List<String> titles = [
  'Characters',
  'Locations',
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
          appBar: AppBar(
            title: Text(
              titles[state.tabIndex],
            ),
          ),
          body: screens[state.tabIndex],
          bottomNavigationBar: NavigationBar(
            selectedIndex: state.tabIndex,
            onDestinationSelected: (value) =>
                context.read<HomeTabIndexCubit>().changeTab(value),
            destinations: const <NavigationDestination>[
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Characters',
              ),
              NavigationDestination(
                icon: Icon(Icons.place),
                label: 'Locations',
              ),
            ],
          ),
        );
      },
    );
  }
}
