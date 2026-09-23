import '../models/movie.dart';

final List<Movie> movies = [
  Movie(
    title: 'Inception',
    posterPath: 'assets/images/inception.jpg',
    cast: [
      'Leonardo DiCaprio',
      'Joseph Gordon-Levitt',
      'Elliot Page',
    ],
    synopsis:
        'A skilled thief who enters people’s dreams is given a chance to erase his past by completing an extremely difficult mission.',
  ),
  Movie(
    title: 'The Dark Knight',
    posterPath: 'assets/images/dark_knight.jpg',
    cast: [
      'Christian Bale',
      'Heath Ledger',
      'Aaron Eckhart',
    ],
    synopsis:
        'Batman faces a dangerous criminal mastermind who creates chaos across Gotham City.',
  ),
  Movie(
    title: 'Interstellar',
    posterPath: 'assets/images/interstellar.jpg',
    cast: [
      'Matthew McConaughey',
      'Anne Hathaway',
      'Jessica Chastain',
    ],
    synopsis:
        'A group of astronauts travels through space in search of a new home for humanity.',
  ),
  Movie(
    title: 'Avengers: Endgame',
    posterPath: 'assets/images/endgame.jpg',
    cast: [
      'Robert Downey Jr.',
      'Chris Evans',
      'Scarlett Johansson',
    ],
    synopsis:
        'The remaining Avengers work together to undo the devastating events caused by Thanos.',
  ),
];