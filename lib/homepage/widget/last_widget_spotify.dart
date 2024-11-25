import 'package:flutter/material.dart';

class RecentlyPlayedSongs extends StatelessWidget {
  const RecentlyPlayedSongs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> recentlyPlayed = [
      {
        'image': 'assets/images/blue_young_kai.jpg',
        'title': 'Blue',
        'artist': 'yung kai',
      },
      {
        'image': 'assets/images/show_me_how.jpg',
        'title': 'Show Me How',
        'artist': 'Men I Trust',
      },
      {
        'image': 'assets/images/about_you.jpg',
        'title': 'About You',
        'artist': 'The 1975',
      },
      {
        'image': 'assets/images/lana_del_rey.jpg',
        'title': 'Lana Del Rey',
        'artist': '',
      },
      {
        'image': 'assets/images/albert_king.jpg',
        'title': 'Albert King',
        'artist': '',
      },
      {
        'image': 'assets/images/joji_pfp.jpg',
        'title': 'Joji',
        'artist': '',
      },
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: recentlyPlayed.map((item) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(item['artist']!.isEmpty ? 100 : 13),
                  child: Image.asset(
                    item['image'] ?? '',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  item['title'] ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (item['artist'] != null && item['artist']!.isNotEmpty)
                  Text(
                    item['artist'] ?? '',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      );
    }
  }
