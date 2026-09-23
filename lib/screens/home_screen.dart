import 'package:flutter/material.dart';

import '../data/movies_data.dart';
import 'details_screen.dart';
import 'watchlist_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Watchlist'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];

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
              subtitle: Text(
                movie.cast.join(', '),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(
                movie.isWatchlisted
                    ? Icons.bookmark
                    : Icons.bookmark_border,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(movie: movie),
                  ),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WatchlistScreen(),
              ),
            );
          },
          child: const Text('View Watchlist'),
        ),
      ),
    );
  }
}