import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTab = 0;
  bool isAllSelected = true;
  bool isMusicSelected = false;
  bool isPodcastsSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Container(
            color: Colors.black,
            padding: EdgeInsets.only(top: 40, bottom: 20),
            child: Row(
              children: [
                Icon(
                    Icons.account_circle,
                size: 36,
                color: Colors.white,),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 16,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = 0;
                          isAllSelected = true;
                          isMusicSelected = false;
                          isPodcastsSelected = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isAllSelected ? Colors.greenAccent :  Colors.grey.shade800,

                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              "Tümü",
                              style: TextStyle(
                                color: isAllSelected
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = 1;
                          isAllSelected = false;
                          isMusicSelected = true;
                          isPodcastsSelected = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMusicSelected ? Colors.greenAccent : Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(16),

                        ),
                        padding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              "Müzik",
                              style: TextStyle(
                                color: isMusicSelected
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = 2;
                          isAllSelected = false;
                          isMusicSelected = false;
                          isPodcastsSelected = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isPodcastsSelected ? Colors.greenAccent : Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(16),

                        ),
                        padding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              "Podcast'ler",
                              style: TextStyle(
                                color: isPodcastsSelected
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                child: _stateController(selectedTab),
              ),
            ),
          )

        ],
      ),
    );
  }

  Widget _stateController (int tabIndex){
    switch (tabIndex) {
      case 0:
        return _buildAllContent();
      case 1:
        return _buildMusicContent();
      case 2:
        return _buildPodcastContent();
      default:
        return Container();

    }
  }

  List<String> songs = ["Şarkı 44", "Şarkı 244", "Şarkı 55"];
  List<String> songs_link = ["Şarkı 44", "Şarkı 244", "Şarkı 55"];
  String pathImg = "assets/icons/img.png";

  List<String> paths = [
      "assets/icons/img.png",
    "assets/icons/img_1.png",
    "assets/icons/img_2.png",
    "assets/icons/img_3.png",
    "assets/icons/img_4.png",
    "assets/icons/img_5.png",
        "assets/icons/img_6.png",
        "assets/icons/img_7.png",
        "assets/icons/img_8.png"];
  final Random _random = Random();

  Widget _buildAllContent() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Text(
            "Yeni favori şarkını bul",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),


          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return _buildFavoriteMusicListCard(songs[index],paths[_random.nextInt(paths.length)]);
              },
            ),
          ),
     //     SizedBox(height: 20),
          Text(
            "Popüler radyolar",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),

          SizedBox(
            height: 165,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return _buildMusicListCard(songs[index],paths[_random.nextInt(paths.length)]);
              },
            ),
          ),
          Text(
            "Popüler sanatçılar",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
       //   SizedBox(height: 10),
          SizedBox(
            height: 185,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return _buildMusicListCircleCard(songs[index],paths[_random.nextInt(paths.length)]);
              },
            ),
          ),

          Text(
            "Günlük müzik ihtiyacın",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          //   SizedBox(height: 10),
          SizedBox(
            height: 165,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return _buildMusicListCard(songs[index],paths[_random.nextInt(paths.length)]);
              },
            ),
          ),

          Text(
            "Popüler albümler ve single'lar ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          //   SizedBox(height: 10),
          SizedBox(
            height: 165,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return _buildMusicListCard(songs[index],paths[_random.nextInt(paths.length)]);
              },
            ),
          ),

          Text(
            "Uyku",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          //   SizedBox(height: 10),
          SizedBox(
            height: 165,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return _buildMusicListCard(songs[index],paths[_random.nextInt(paths.length)]);
              },
            ),
          ),

          Text(
            "Popüler radyolar",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          //   SizedBox(height: 10),
          SizedBox(
            height: 165,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return _buildMusicListCard(songs[index],paths[_random.nextInt(paths.length)]);
              },
            ),
          ),
          SizedBox(
           child:  Column(
              children: List.generate(8, (index) => GestureDetector(
                child: _buildSpecialMusicCard(index.toString(),paths[_random.nextInt(paths.length)]),
              )),
            ),

          ),


        ],
      ),
    );
  }

  Widget _buildMusicContent(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Text(
            "Yeni favori şarkını bul",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          //     SizedBox

          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return _buildFavoriteMusicListCard(songs[index],paths[_random.nextInt(paths.length)]);
              },
            ),
          ),


          Text(
            "Popüler sanatçılar",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          //   SizedBox(height: 10),
          SizedBox(
            height: 185,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return _buildMusicListCircleCard(songs[index],paths[_random.nextInt(paths.length)]);
              },
            ),
          ),

          Text(
            "Günlük müzik ihtiyacın",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          //   SizedBox(height: 10),
          SizedBox(
            height: 165,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return _buildMusicListCard(songs[index],"");
              },
            ),
          ),

          Text(
            "Popüler albümler ve single'lar ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          //   SizedBox(height: 10),
          SizedBox(
            height: 165,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return _buildMusicListCard(songs[index],"");
              },
            ),
          ),

          Text(
            "Uyku",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          //   SizedBox(height: 10),
          SizedBox(
            height: 165,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return _buildMusicListCard(songs[index],"");
              },
            ),
          ),


          SizedBox(
            child:  Column(
              children: List.generate(8, (index) => GestureDetector(
                child: _buildSpecialMusicCard(index.toString(),paths[_random.nextInt(paths.length)]),
              )),
            ),

          ),


        ],
      ),
    );
  }

  Widget _buildPodcastContent(){
    return Padding(padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            child:  Column(
              children: List.generate(16, (index) => GestureDetector(
                child: _buildSpecialMusicCard(index.toString(),paths[_random.nextInt(paths.length)]),
              )),
            ),

          ),
        ],
      ),);
  }

  Widget _buildFavoriteMusicListCard(String title, String path) {
    return Container(
      width: 120,
      height: 120,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }


  Widget _buildMusicListCard(String title, String imageUrl) {
    return Card(
      color: Colors.transparent,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 120,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.vertical(top: Radius.circular(10),bottom: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildMusicListCircleCard(String title,String path) {
    return Card(
      color: Colors.transparent,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        width: 140,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
              height: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(path),
                    fit: BoxFit.cover,
                  ),
                color: Colors.grey[800],
                shape: BoxShape.circle
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpecialMusicCard(String title,String path) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,

      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        border: Border(top: BorderSide(width: 10)),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}