import 'package:flutter/material.dart';

class JustPlayedSection extends StatelessWidget {
  const JustPlayedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> justPlayedItems = [
      {
        'image': 'assets/images/like_music.jpg',
        'title': 'Liked Songs',
        'artist': '162 song plays',
      },
      {
        'image': 'assets/images/xad.jpg',
        'title': 'I Miss Her',
        'artist': 'Playlist • Ashitaka', 
      },
      {
        'image': 'assets/images/jmk48.png',
        'title': 'JMK48',
        'artist': 'Artist', 
      },
      {
        'image': 'assets/images/young_stonner.jpg',
        'title': 'Young Stonner Life',
        'artist': 'Playlist • Ashitaka', 
      },
      {
        'image': 'assets/images/listening_with_her.jpg',
        'title': 'Listen to Him',
        'artist': 'Artist Name', 
      },
      {
        'image': 'assets/images/darkfantasy.jpg',
        'title': 'Dark Fantasy Vibes',
        'artist': 'Playlist • Ashitaka', 
      },
      {
        'image': 'assets/images/study.jpg',
        'title': 'Dark And Chill Lofi',
        'artist': 'Playlist • Ashitaka', 
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Just Played",
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
              },
              child: const Text(
                "Show all",
                style: TextStyle(
                  color: Color(0xFFAAAAAA),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: justPlayedItems.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;

              final BorderRadius borderRadius = (index == 3 || index == 2) 
                  ? BorderRadius.circular(100)
                  : BorderRadius.circular(3);

              return Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: borderRadius,
                        child: Image.asset(
                          item['image'] ?? '',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: 100,   
                        child: Text(
                          item['title'] ?? '',
                          overflow: TextOverflow.ellipsis, 
                          maxLines: 1, 
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5), 
                      SizedBox(
                        width: 100,   
                        child: Text(
                          item['artist'] ?? 'Unknown Artist', 
                          overflow: TextOverflow.ellipsis, 
                          maxLines: 1, 
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10), 
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
