import 'package:flutter/material.dart';
import 'package:pokedex/src/modules/details/pokemon_model.dart';

class DetailsPage extends StatelessWidget {
  PokemonStatsModel pokemonStatsModel = PokemonStatsModel(
    id: '001',
    name: 'Bulbasaur',
    type1Text: 'Grass',
    type2Text: "Poison",
    type1Color: '#74CB48',
    type2Color: '#A43E9E',
    weight: 6.9,
    height: 0.7,
    atk1: 'Chlorophyll',
    atk2: 'Overgrow',
    description:
        'There is a plant seed on its back right from the day this pokemon is born. The seed slowly grows larger',
    hpSts: 45,
    atkSts: 49,
    defSts: 49,
    satkSts: 65,
    sdefSts: 65,
    spdSts: 45,
    img: 'assets/img/bulbasaur.png',
    bgColor: '#74CB48',
  );

  DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pokemonStatsModel.bgColor,

      //body
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/img/pokeball.png',
                            width: MediaQuery.of(context).size.width / 2,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
                          margin: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Btn grass
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        color: pokemonStatsModel.type1Color),
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                                    child: Text(
                                      pokemonStatsModel.type1Text,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFFFFFF)),
                                    ),
                                  ),

                                  // sized box
                                  const SizedBox(
                                    width: 20,
                                  ),

                                  // Btn poison
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      color: pokemonStatsModel.type2Color,
                                    ),
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                                    child: Text(
                                      pokemonStatsModel.type2Text,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // Sizedbox
                              const SizedBox(
                                height: 20,
                              ),

                              // About
                              const Text(
                                'About',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF74CB48),
                                ),
                              ),

                              // Sizedbox
                              const SizedBox(
                                height: 20,
                              ),

                              // Weight / Height / Moves
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //weight
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          // icon
                                          const Padding(
                                            padding: EdgeInsets.only(right: 6.0),
                                            child: Icon(Icons.monitor_weight_outlined),
                                          ),

                                          // Text
                                          Text(
                                            pokemonStatsModel.weight.toString(),
                                            style: const TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),

                                      //sizedbox
                                      const SizedBox(
                                        height: 10,
                                      ),

                                      // small text
                                      const Text(
                                        'Weight',
                                        style: TextStyle(fontSize: 12, color: Color(0xFF666666)),
                                      ),
                                    ],
                                  ),

                                  // V. Divider
                                  const SizedBox(
                                    height: 60,
                                    width: 30,
                                    child: VerticalDivider(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),

                                  // Height
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          //
                                          const Padding(
                                            padding: EdgeInsets.only(right: 6.0),
                                            child: Icon(Icons.height),
                                          ),

                                          // Text
                                          Text(
                                            pokemonStatsModel.height.toString(),
                                            style: const TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),

                                      // sizedbox
                                      const SizedBox(
                                        height: 10,
                                      ),

                                      // small text
                                      const Text(
                                        'Height',
                                        style: TextStyle(fontSize: 12, color: Color(0xFF666666)),
                                      ),
                                    ],
                                  ),

                                  // V. Divider
                                  const SizedBox(
                                    height: 60,
                                    width: 30,
                                    child: VerticalDivider(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),

                                  // moves
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                pokemonStatsModel.atk1,
                                                style: const TextStyle(fontSize: 14),
                                              ),
                                              Text(
                                                pokemonStatsModel.atk2,
                                                style: const TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      // sizedbox
                                      const SizedBox(
                                        height: 10,
                                      ),

                                      //small text
                                      const Text(
                                        'Moves',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF666666),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              // sizedbox
                              const SizedBox(
                                height: 16,
                              ),

                              // Paragraph
                              Text(
                                pokemonStatsModel.description,
                                textAlign: TextAlign.center,
                              ),

                              //sizedbox
                              const SizedBox(
                                height: 16,
                              ),

                              // Base stats
                              const Text(
                                'Base Stats',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF74CB48),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),

                              // Stats
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Stats Names
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'HP\nATK\nDEF\nSATK\nSDEF\nSPD',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF74CB48),
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),

                                  // V. Divider
                                  const SizedBox(
                                    height: 95,
                                    width: 30,
                                    child: VerticalDivider(
                                      color: Colors.black,
                                    ),
                                  ),

                                  // HP - Progress bar
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(pokemonStatsModel.hpSts.toString()),
                                          const SizedBox(width: 5),
                                          // Linear indicator
                                          const SizedBox(
                                            width: 240,
                                            child: LinearProgressIndicator(
                                              value: 0.25,
                                              color: Colors.blue,
                                              backgroundColor: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),

                                      // ATK - Progress bar
                                      Row(
                                        children: [
                                          Text(pokemonStatsModel.atkSts.toString()),
                                          const SizedBox(width: 5),
                                          // Linear indicator
                                          const SizedBox(
                                            width: 240,
                                            child: LinearProgressIndicator(
                                              value: 0.25,
                                              color: Colors.blue,
                                              backgroundColor: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),

                                      // DEF - Progress bar
                                      Row(
                                        children: [
                                          Text(pokemonStatsModel.defSts.toString()),
                                          const SizedBox(width: 5),
                                          // Linear indicator
                                          const SizedBox(
                                            width: 240,
                                            child: LinearProgressIndicator(
                                              value: 0.25,
                                              color: Colors.blue,
                                              backgroundColor: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),

                                      // SATK - Progress bar
                                      Row(
                                        children: [
                                          Text(
                                              (pokemonStatsModel.satkSts * 100).toStringAsFixed(0)),
                                          const SizedBox(width: 5),
                                          // Linear indicator
                                          const SizedBox(
                                            width: 240,
                                            child: LinearProgressIndicator(
                                              value: 0.25,
                                              color: Colors.blue,
                                              backgroundColor: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),

                                      // SDEF - Progress bar
                                      Row(
                                        children: [
                                          Text(
                                              (pokemonStatsModel.sdefSts * 100).toStringAsFixed(0)),
                                          const SizedBox(width: 5),
                                          // Linear indicator
                                          const SizedBox(
                                            width: 240,
                                            child: LinearProgressIndicator(
                                              value: 0.25,
                                              color: Colors.blue,
                                              backgroundColor: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),

                                      // SPD - Progress bar
                                      Row(
                                        children: [
                                          Text(pokemonStatsModel.spdSts.toString()),
                                          const SizedBox(width: 5),
                                          // Linear indicator
                                          const SizedBox(
                                            width: 240,
                                            child: LinearProgressIndicator(
                                              value: 0.25,
                                              color: Colors.blue,
                                              backgroundColor: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.width / 6,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          pokemonStatsModel.img,
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Row(
                children: [
                  const BackButton(
                    color: Color(0xFFFFFFFF),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            pokemonStatsModel.name,
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF)),
                          ),
                          Text(
                            '#${pokemonStatsModel.id}',
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
