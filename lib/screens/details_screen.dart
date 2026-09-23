import 'package:flutter/material.dart';

import '../models/movie.dart';

class DetailsScreen extends StatefulWidget {
  final Movie movie;

  const DetailsScreen({
    super.key,
    required this.movie,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final movie = widget.movie;

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                movie.posterPath,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              movie.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Cast',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              movie.cast.join(', '),
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            const Text(
              'Synopsis',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              movie.synopsis,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    movie.isWatchlisted = !movie.isWatchlisted;
                  });
                },
                icon: Icon(
                  movie.isWatchlisted
                      ? Icons.bookmark
                      : Icons.bookmark_border,
                ),
                label: Text(
                  movie.isWatchlisted
                      ? 'Remove from Watchlist'
                      : 'Add to Watchlist',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}