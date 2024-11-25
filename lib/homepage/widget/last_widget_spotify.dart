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

    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = constraints.maxWidth < 400;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: recentlyPlayed.map((item) {
              final imageSize = isSmallScreen ? 150.0 : 120.0;
              final fontSizeTitle = isSmallScreen ? 11.0 : 13.0;
              final fontSizeArtist = isSmallScreen ? 10.0 : 13.0;

              return Padding(
                padding: EdgeInsets.only(right: isSmallScreen ? 8 : 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        item['artist']!.isEmpty ? imageSize / 2 : 13,
                      ),
                      child: Image.asset(
                        item['image'] ?? '',
                        width: imageSize,
                        height: imageSize,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item['title'] ?? '',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSizeTitle,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (item['artist'] != null && item['artist']!.isNotEmpty)
                      Text(
                        item['artist'] ?? '',
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w400,
                          fontSize: fontSizeArtist,
                        ),
                      ),
                  ],
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
