import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/bloc/locations/locations_bloc.dart';

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
          locationFetched: (locations) {
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
                  child: ListView.builder(
                    controller: scrollController,
                    cacheExtent: 10,
                    padding: EdgeInsets.symmetric(
                      vertical: itemHeight * 0.5,
                      horizontal: 10,
                    ),
                    itemCount: locations.data!.length + 1,
                    itemBuilder: (context, index) {
                      return index < locations.data!.length
                          ? Transform.translate(
                              offset: Offset(
                                0,
                                index.isOdd ? itemHeight * 0.5 : 0.0,
                              ),
                            )
                          : const Padding(
                              padding: EdgeInsets.symmetric(vertical: 32),
                              child: Center(
                                child: CircularProgressIndicator.adaptive(),
                              ),
                            );
                    },
                  ),
                );
              },
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
