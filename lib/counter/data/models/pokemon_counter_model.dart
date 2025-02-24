class PokemonCounterModel {
  final String pokemonSpecies;
  int currentEncounters;
  String odds;
  bool beenFound;

  PokemonCounterModel(
      {required this.pokemonSpecies,
      this.currentEncounters = 0,
      required this.odds,
      this.beenFound = false});
}
