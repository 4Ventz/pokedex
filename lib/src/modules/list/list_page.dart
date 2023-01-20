import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/src/modules/details/pokemon_model.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final Dio _client = Dio();
  bool _isLoading = false;

  goToDetails() async {
    setState(() {
      _isLoading = true;
    });

    var pokemonStatsModel = await getPokemonStats(4);

    if (pokemonStatsModel != null) {
      Navigator.pushNamed(context, '/details', arguments: pokemonStatsModel);
    }

    setState(() {
      _isLoading = false;
    });
  }

  Future<PokemonStatsModel?> getPokemonStats(int index) async {
    PokemonStatsModel? pokemon;
    try {
      var responseStats = await _client.get('https://pokeapi.co/api/v2/pokemon/$index/');
      var responseSpecies = await _client.get('https://pokeapi.co/api/v2/pokemon-species/$index/');

      pokemon = PokemonStatsModel(
        id: responseStats.data['id'].toString().padLeft(3, '0'),
        name: responseStats.data['name'].toString().replaceFirst(
            responseStats.data['name'].toString()[0],
            responseStats.data['name'].toString()[0].toUpperCase()),
        type1Text: responseStats.data['types'][0]?['type']['name'].toString() ?? '',
        type2Text: '',
        type1Color: '#74CB48',
        type2Color: '#A43E9E',
        weight: double.tryParse(responseStats.data['weight'].toString()) ?? 0,
        height: double.tryParse(responseStats.data['height'].toString()) ?? 0,
        atk2: responseStats.data['abilities'][0]?['ability']['name'].toString() ?? '',
        atk1: responseStats.data['abilities'][1]?['ability']['name'].toString() ?? '',
        description:
            responseSpecies.data['flavor_text_entries'][9]?['flavor_text'].toString() ?? '',
        hpSts: int.tryParse(responseStats.data['stats'][0]['base_stat'].toString()) ?? 0,
        atkSts: int.tryParse(responseStats.data['stats'][1]['base_stat'].toString()) ?? 0,
        defSts: int.tryParse(responseStats.data['stats'][2]['base_stat'].toString()) ?? 0,
        satkSts: int.tryParse(responseStats.data['stats'][3]['base_stat'].toString()) ?? 0,
        sdefSts: int.tryParse(responseStats.data['stats'][4]['base_stat'].toString()) ?? 0,
        spdSts: int.tryParse(responseStats.data['stats'][5]['base_stat'].toString()) ?? 0,
        img: responseStats.data['sprites']['other']['official-artwork']['front_default'].toString(),
        bgColor: '#74CB48',
      );
    } on DioError catch (e) {
      if (e.response != null) {
        debugPrint(e.response?.data['menssage']);
      }
    }

    return pokemon;
  }

  // PokemonStatsModel pokemonStatsModel = PokemonStatsModel(
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _isLoading ? null : goToDetails,
          child: const Text('Ir para detalhes'),
        ),
      ),
    );
  }
}
