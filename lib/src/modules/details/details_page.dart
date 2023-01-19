import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF74CB48),

      //Appbar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Bulbasaur',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '#001',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      //body
      body: Container(
        color: Color(0xFFFFFFFF),
        child: Column(
          children: [
            Image.asset('assets/img/bulbasaur.png'),

            // Grass / Poison btn
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Btn grass
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Color(0xFF74CB48)),
                  margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: const Text('grass'),
                ),

                // sized box
                const SizedBox(
                  width: 20,
                ),

                // Btn poison
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: const Color(0xFFA43E9E),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: const Text('poison'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            // About
            const Text('About'),
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
                        const Icon(Icons.monitor_weight),
                        const Text('6,9 kg'),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Weight'),
                  ],
                ),

                // V. Divider
                const SizedBox(
                  height: 60,
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
                        const Icon(Icons.height),
                        const Text('0,7 m'),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Height'),
                  ],
                ),

                // V. Divider
                const SizedBox(
                  height: 60,
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
                            const Text('Chlorophyll'),
                            const Text('Overgrow'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Moves'),
                  ],
                ),
              ],
            ),

            // Paragraph
            const SizedBox(
              height: 20,
            ),
            const Text(
              'There is a plant seed on its back right from the day this pokemon is born. The seed slowly grows larger',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),

            // Base stats
            const Text('Base Stats'),
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
                  children: [
                    const Text('HP'),
                    const Text('ATK'),
                    const Text('DEF'),
                    const Text('SATK'),
                    const Text('SDEF'),
                    const Text('SPD'),
                  ],
                ),

                // V. Divider
                const SizedBox(
                  height: 95,
                  child: VerticalDivider(
                    color: Colors.black,
                  ),
                ),

                // Stats value
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // Text
                        const Text('045'),
                        const SizedBox(
                          width: 5,
                        ),

                        // progress bar
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 140,
                              child: LinearProgressIndicator(
                                value: 0.5,
                                color: Colors.blue,
                                backgroundColor: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // Text
                        const Text('045'),
                        const SizedBox(
                          width: 5,
                        ),

                        // progress bar
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 140,
                              child: LinearProgressIndicator(
                                value: 0.5,
                                color: Colors.blue,
                                backgroundColor: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // Text
                        const Text('045'),
                        const SizedBox(
                          width: 5,
                        ),

                        // progress bar
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 140,
                              child: LinearProgressIndicator(
                                value: 0.5,
                                color: Colors.blue,
                                backgroundColor: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // Text
                        const Text('045'),
                        const SizedBox(
                          width: 5,
                        ),

                        // progress bar
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 140,
                              child: LinearProgressIndicator(
                                value: 0.5,
                                color: Colors.blue,
                                backgroundColor: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // Text
                        const Text('045'),
                        const SizedBox(
                          width: 5,
                        ),

                        // progress bar
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 140,
                              child: LinearProgressIndicator(
                                value: 0.5,
                                color: Colors.blue,
                                backgroundColor: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // Text
                        const Text('045'),
                        const SizedBox(
                          width: 5,
                        ),

                        // progress bar
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 140,
                              child: LinearProgressIndicator(
                                value: 0.5,
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
            )
          ],
        ),
      ),
    );
  }
}
