import 'package:flutter/material.dart';

import '../data/movies_data.dart';
import 'details_screen.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final watchlistedMovies =
        movies.where((movie) => movie.isWatchlisted).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watchlist'),
        centerTitle: true,
      ),
      body: watchlistedMovies.isEmpty
          ? const Center(
              child: Text(
                'Your watchlist is empty.',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: watchlistedMovies.length,
              itemBuilder: (context, index) {
                final movie = watchlistedMovies[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(12),
                    leading: Image.asset(
                      movie.posterPath,
                      width: 60,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      movie.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text('Watchlisted'),
                    trailing: const Icon(Icons.bookmark),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(movie: movie),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}