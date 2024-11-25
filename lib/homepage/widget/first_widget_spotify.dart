import 'package:flutter/material.dart';

class FirstWidgetSpotify extends StatelessWidget {
  const FirstWidgetSpotify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<List<Map<String, String>>> data = [
      [
        {'imageUrl': 'assets/images/like_music.jpg', 'title': 'Liked Songs'},
        {'imageUrl': 'assets/images/xad.jpg', 'title': 'I Miss Her'},
      ],
      [
        {'imageUrl': 'assets/images/study.jpg', 'title': 'Study And Chill'},
        {'imageUrl': 'assets/images/listening_with_her.jpg', 'title': 'Listen to him'},
      ],
      [
        {'imageUrl': 'assets/images/artic_monkey.jpg', 'title': 'Artic Monkeys'},
        {'imageUrl': 'assets/images/lofi_girl.jpg', 'title': 'Lofi Girl'},
      ],
    ];

    return Column(
      children: data.map((items) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isSmallScreen = constraints.maxWidth < 400;

              return Row(
                children: items.map((item) {
                  return Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: isSmallScreen ? 50 : 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFF333333),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomLeft: Radius.circular(4),
                            ),
                            child: Image.asset(
                              item['imageUrl']!,
                              width: isSmallScreen ? 50 : 60,
                              height: isSmallScreen ? 50 : 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 7),
                          Expanded(
                            child: Text(
                              item['title']!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: isSmallScreen ? 11 : 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        );
      }).toList(),
    );
  }
}
