class Game {
  String name;
  String imageUrl;
  List<Information> information;
  // TODO: Add servings and ingredients here

  Game(
      this.name,
      this.imageUrl,
      this.information
      );

// TODO; Add List<Recipe> here
  static List<Game> samples = [
    Game(
      'Valorant',
      'assets/valorant.jpg',
      [Information('Free\n', 'Valorant is a tactical shooting game involving two teams with 5 players in each team.\n', '2 June 2019')]

    ),
    Game(
      'League of Legends',
      'assets/lol.jpg',
        [Information(
            'Free\n',
            'League of Legends is a multiplayer online battle arena (MOBA) game in which the player controls a character ("champion") with a set of unique abilities from an isometric perspective.\n',
            '27 October 2010'
        )]
    ),
    Game(
      'FarCry 6',
      'assets/farcry 6.jpg',
        [Information(
            '1200.00 Baht\n',
            'Far Cry 6 is a 2021 action-adventure first-person shooter game developed by Ubisoft Toronto and published by Ubisoft. It is the sixth main installment in the Far Cry series and the successor to 2018\'s Far Cry 5.\n',
            '27 October 2021'
        )]
    ),
    Game(
      'SpiderMan: Miles Morales',
      'assets/spiderman.png',
        [Information(
            '1650.00 Baht\n',
            'SpiderMan: Miles Morales is a 2020 action-adventure game developed by Insomniac Games and published by Sony Interactive Entertainment. Based on the Marvel Comics character Miles Morales, '
                'it is inspired by both the character\'s decade-long comic book mythology and the 2018 animated film Spider-Man: Into the Spider-Verse, '
                'which helped to popularize him.\n',
            '27 October 2021'
        )]
    ),
    Game(
      'Fifa Online 4',
      'assets/fo4.jpg',
        [Information(
            'Free\n',
            'Fifa Online 4 is the latest free-to-play soccer game from EA’s world-acclaimed FIFA franchise. It features best-in-class visuals and gameplay with fluid ball movement, '
                'unique individual player skills, enhanced AI and defense systems for a highly authentic experience.\n',
            '17 May 2018'
        )]
    ),
    Game(
      'Marvel\'s Avengers',
      'assets/marvel.jpg',
        [Information(
            '1200.00 Baht\n',
            'Marvel\'s Avengers is a 2020 action role-playing brawler game developed by Crystal Dynamics and published by Square Enix. Based on the Marvel Comics superhero team the Avengers, '
                'the game is mainly inspired by the Marvel Cinematic Universe\'s iteration of the group, but also incorporates elements from the team\'s long-running comic book mythology.\n',
            '4 September 2020'
        )]
    )
  ];
}
class Information {
  String price;
  String description;
  String release;

  Information(
      this.price,
      this.description,
      this.release,
      );
}
