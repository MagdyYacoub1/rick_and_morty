part of 'characters_bloc.dart';

/// Responsilbe for listing all character events for [CharactersBloc]
@freezed
class CharactersEvent with _$CharactersEvent {
  ///Used to fetch data from [CharactersRepository]
  const factory CharactersEvent.fetch() = Fetch;

  ///Fetch more datafrom api given next page url
  const factory CharactersEvent.fetchMore() = FetchMore;
}
