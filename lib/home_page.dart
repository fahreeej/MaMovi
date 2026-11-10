
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MAMOVI',
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Welcome to MAMOVI!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Find your favorite movies here.',
              style: TextStyle(
                color: Colors.white60,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Movie List',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            movieCard(
              'Interstellar',
              'Sci-Fi',
              '8.7',
              Colors.blue,
              'assets/images/interstellar.jpg',
            ),

            movieCard(
              'The Batman',
              'Action',
              '8.2',
              Colors.grey,
              'assets/images/TheBatman.jpg',
            ),

            movieCard(
              'Joker',
              'Drama',
              '8.4',
              Colors.deepPurple,
              'assets/images/Joker.jpg',
            ),

             movieCard(
              'Avengers',
              'Action',
              '8.5',
              Colors.red,
              'assets/images/TheAvengers.jpg',
            ),
          ],
        ),
      ),
    ),
    );
  }

  Widget movieCard(
    String title,
    String genre,
    String rating,
    Color color,
    String imagePath, 
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: const Color(0xFF172033),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        children: [

          Container(
            width: 70,
            height: 90,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),

            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.movie,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(height: 5),
                Text(
                  'MAMOVI',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  genre,
                  style: const TextStyle(
                    color: Colors.white60,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  'Rating: $rating / 10',
                  style: const TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: 90,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
