import 'package:flutter/material.dart';
import 'overview.dart';
import 'detail_obj.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // 1
  @override
  Widget build(BuildContext context) {
    // 2
    final ThemeData theme = ThemeData();
    // 3
    return MaterialApp(
      // 4
      title: 'Game List',
      // 5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      // 6
      home: const MyHomePage(title: 'Game Information'),
    );
  }

}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // 3
      body: SafeArea(
        // TODO: Replace child: Container()
        // 4
        child: ListView.builder(
          // 5
          itemCount: Game.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            // TODO: Update to return Game card
            // TODO: Add GestureDetector
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      // TODO: Replace return with return GameDetail()
                      return GameDetail(game: Game.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildGameCard(Game.samples[index]),
            );

          },
        ),
      ),
    );
  }

// TODO: Add buildRecipeCard() here
  Widget buildGameCard(Game game) {
    return Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(game.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              game.name,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }


}
