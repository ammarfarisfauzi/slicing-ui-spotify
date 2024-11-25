import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';
import '../widget/custom_bottom_nabar.dart';
import '../widget/first_widget_spotify.dart';
import '../widget/middle_widget_spotify.dart';
import '../widget/last_widget_spotify.dart';
import '../widget/lastest_widget_spotify.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/girl_with_butterfly.jpg',
                  height: 32,
                  width: 32,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 7),
              SizedBox(
                width: 70,
                height: 32,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1ED760),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "All",
                    style: TextStyle(color: Colors.black, fontSize: 11),
                  ),
                ),
              ),
              const SizedBox(width: 7),
              SizedBox(
                width: 80,
                height: 32,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF333333),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Music",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
              ),
              const SizedBox(width: 7),
              SizedBox(
                width: 90,
                height: 32,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF333333),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Podcast",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FirstWidgetSpotify(),  
            const SizedBox(height: 30),
            const Text(
              "You've been playing a lot lately",
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            SongRow(
              imageUrl: 'assets/images/tyler_creator.jpg',
              songTitle: 'Noid',
              artistName: 'Tyler, The Creator',
              onMorePressed: () {},
            ),
            SongRow(
              imageUrl: 'assets/images/luciddream.jpg',
              songTitle: 'Lucid Dreams',
              artistName: 'Juice WRLD',
              onMorePressed: () {},
            ),
            SongRow(
              imageUrl: 'assets/images/joji.jpg',
              songTitle: 'Sanctuary',
              artistName: 'Joji',
              onMorePressed: () {},
            ),
            const SizedBox(height: 25),
            const Text(
              "Recent Played",
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            RecentlyPlayedSongs(),
            const SizedBox(height: 30),
            JustPlayedSection(),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(),
    );
  }
}
