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

    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = constraints.maxWidth < 400;
        final imageSize = isSmallScreen ? 80.0 : 100.0;
        final fontSizeTitle = isSmallScreen ? 11.0 : 13.0;
        final fontSizeArtist = isSmallScreen ? 10.0 : 13.0;
        final horizontalSpacing = isSmallScreen ? 8.0 : 10.0;

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
                  onPressed: () {},
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

                  final BorderRadius borderRadius =
                      (index == 3 || index == 2) ? BorderRadius.circular(imageSize / 2) : BorderRadius.circular(3);

                  return Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: borderRadius,
                            child: Image.asset(
                              item['image'] ?? '',
                              height: imageSize,
                              width: imageSize,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: imageSize,
                            child: Text(
                              item['title'] ?? '',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: fontSizeTitle,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: imageSize,
                            child: Text(
                              item['artist'] ?? 'Unknown Artist',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: fontSizeArtist,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: horizontalSpacing),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
