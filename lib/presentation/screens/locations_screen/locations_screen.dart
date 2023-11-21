import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/bloc/locations/locations_bloc.dart';
import 'package:rick_and_morty/presentation/screens/locations_screen/components/locations_list.dart';

import '../../widgets/faild_state_widget.dart';

/// Shows a list of all Locations
class LocationsScreen extends StatefulWidget {
  /// Locations screen
  const LocationsScreen({super.key});

  @override
  State<LocationsScreen> createState() => _LocationsScreenState();
}

class _LocationsScreenState extends State<LocationsScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        context.read<LocationBloc>().add(const LocationFetchMore());
      }
    });
  }

  Future<void> refresh() async {
    context.read<LocationBloc>().add(const LocationFetch());
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        return state.when(
          locationLoadInProgress: () => const Center(
            child: CircularProgressIndicator(),
          ),
          locationFetched: (apiResponse) {
            return LocationsList(
              locations: apiResponse.data,
            );
          },
          locationLoadMoreInProgress: (locations) {
            return LocationsList(
              locations: locations,
            );
          },
          locationEndOfList: () => const Center(
            child: Text(
              'End of list',
              textAlign: TextAlign.center,
            ),
          ),
          locationFaild: (e) => FaildStateWidget(
            messaage: e,
            action: refresh,
          ),
        );
      },
    );
  }
}
