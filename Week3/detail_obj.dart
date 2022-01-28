import 'package:flutter/material.dart';
import 'overview.dart';

class GameDetail extends StatefulWidget {
  final Game game;

  const GameDetail({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  _GameDetailState createState() {
    return _GameDetailState();
  }
}

// TODO: Add _RecipeDetailState here
class _GameDetailState extends State<GameDetail> {
  // TODO: Add _sliderVal here
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.game.name),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.game.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.game.name,
              style: const TextStyle(fontSize: 18),
            ),
            // TODO: Add Expanded
            // 7
            Expanded(
              // 8
              child: ListView.builder(
              padding: const EdgeInsets.all(7.0),
              itemCount: widget.game.information.length,
              itemBuilder: (BuildContext context, int index) {
              final information = widget.game.information[index];
              // 9
              // TODO: Add ingredient.quantity
              return Text(
              '${information.price} ${information.description} ${information.release}');
              },
              ),
              ),

              // TODO: Add Slider() here

          ],
        ),
      ),
    );
  }
}

