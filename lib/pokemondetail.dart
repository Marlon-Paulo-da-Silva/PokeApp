import 'package:flutter/material.dart';
import 'package:flutterapp/pokemon.dart';

class Pokedetail extends StatelessWidget {
  final Pokemon pokemon;

  Pokedetail({this.pokemon});

  bodyWidget() => Stack(
        children: <Widget>[
          Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  Text(pokemon.name),
                  Text("Height: ${pokemon.height}"),
                  Text("Weight: ${pokemon.weight}"),
                  Text("Types"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.type
                        .map((t) => FilterChip(
                              label: Text(t),
                              onSelected: (b) {},
                            ))
                        .toList(),
                  ),
                  Text("Weakness"),
                ],
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        title: Text(pokemon.name),
      ),
      body: bodyWidget(),
    );
  }
}
