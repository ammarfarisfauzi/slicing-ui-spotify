import 'package:flutter/material.dart';

class SongRow extends StatelessWidget {
  final String imageUrl;
  final String songTitle;
  final String artistName;
  final VoidCallback? onMorePressed;

  const SongRow({
    Key? key,
    required this.imageUrl,
    required this.songTitle,
    required this.artistName,
    this.onMorePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = constraints.maxWidth < 350;
        final imageSize = isSmallScreen ? 40.0 : 50.0;
        final fontSizeTitle = isSmallScreen ? 14.0 : 15.0;
        final fontSizeArtist = isSmallScreen ? 12.0 : 13.0;
        final spacingBetween = isSmallScreen ? 12.0 : 18.0;

        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Album image
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    imageUrl,
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: spacingBetween),
                // Song details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        songTitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSizeTitle,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        artistName,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: fontSizeArtist,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                // More options button
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                  onPressed: onMorePressed ?? () {},
                ),
              ],
            ),
            const SizedBox(height: 18),
          ],
        );
      },
    );
  }
}
