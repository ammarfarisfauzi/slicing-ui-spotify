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
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    songTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    artistName,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onPressed: onMorePressed ?? () {},
            ),
          ],
        ),
        const SizedBox(height: 18),
      ],
    );
  }
}
