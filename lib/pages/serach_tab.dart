import 'package:flutter/material.dart';

class SpotifySearchPage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'title': 'Müzik', 'color': Colors.pink},
    {'title': 'Podcastler', 'color': Colors.green},
    {'title': 'Canlı Etkinlikler', 'color': Colors.purple},
    {'title': 'Senin için Hazırlandı', 'color': Colors.blue},
    {'title': 'Yeni Çıkanlar', 'color': Colors.indigo},
    {'title': 'Pop', 'color': Colors.red},
    {'title': 'Hip Hop', "color": Colors.blueAccent},
    {'title': 'Ruh Hali', 'color': Colors.pinkAccent},
    {'title': 'Popüler', 'color': Colors.deepPurple},
    {'title': 'Podcast Listeleri', 'color': Colors.blue},
    {'title': 'Eğitim', 'color': Colors.teal},
    {'title': 'Belgesel', 'color': Colors.brown},
    {'title': 'Yeni Çıkanlar', 'color': Colors.indigo},
    {'title': 'Pop', 'color': Colors.red},
    {'title': 'Hip Hop', "color": Colors.blueAccent},
    {'title': 'Ruh Hali', 'color': Colors.pinkAccent},
    {'title': 'Popüler', 'color': Colors.deepPurple},
    {'title': 'Podcast Listeleri', 'color': Colors.blue},
    {'title': 'Eğitim', 'color': Colors.teal},
    {'title': 'Belgesel', 'color': Colors.brown},
    {'title': 'Müzik', 'color': Colors.pink},
    {'title': 'Podcastler', 'color': Colors.green},
    {'title': 'Canlı Etkinlikler', 'color': Colors.purple},
    {'title': 'Senin için Hazırlandı', 'color': Colors.blue},
    {'title': 'Yeni Çıkanlar', 'color': Colors.indigo},
    {'title': 'Pop', 'color': Colors.red},
    {'title': 'Hip Hop', "color": Colors.blueAccent},
    {'title': 'Ruh Hali', 'color': Colors.pinkAccent},
    {'title': 'Popüler', 'color': Colors.deepPurple},
    {'title': 'Podcast Listeleri', 'color': Colors.blue},
    {'title': 'Eğitim', 'color': Colors.teal},
    {'title': 'Belgesel', 'color': Colors.brown},
    {'title': 'Yeni Çıkanlar', 'color': Colors.indigo},
    {'title': 'Pop', 'color': Colors.red},
    {'title': 'Hip Hop', "color": Colors.blueAccent},
    {'title': 'Ruh Hali', 'color': Colors.pinkAccent},
    {'title': 'Popüler', 'color': Colors.deepPurple},
    {'title': 'Podcast Listeleri', 'color': Colors.blue},
    {'title': 'Eğitim', 'color': Colors.teal},
    {'title': 'Belgesel', 'color': Colors.brown},
    {'title': 'Müzik', 'color': Colors.pink},
    {'title': 'Podcastler', 'color': Colors.green},
    {'title': 'Canlı Etkinlikler', 'color': Colors.purple},
    {'title': 'Senin için Hazırlandı', 'color': Colors.blue},
    {'title': 'Yeni Çıkanlar', 'color': Colors.indigo},
    {'title': 'Pop', 'color': Colors.red},
    {'title': 'Hip Hop', "color": Colors.blueAccent},
    {'title': 'Ruh Hali', 'color': Colors.pinkAccent},
    {'title': 'Popüler', 'color': Colors.deepPurple},
    {'title': 'Podcast Listeleri', 'color': Colors.blue},
    {'title': 'Eğitim', 'color': Colors.teal},
    {'title': 'Belgesel', 'color': Colors.brown},
    {'title': 'Yeni Çıkanlar', 'color': Colors.indigo},
    {'title': 'Pop', 'color': Colors.red},
    {'title': 'Hip Hop', "color": Colors.blueAccent},
    {'title': 'Ruh Hali', 'color': Colors.pinkAccent},
    {'title': 'Popüler', 'color': Colors.deepPurple},
    {'title': 'Podcast Listeleri', 'color': Colors.blue},
    {'title': 'Eğitim', 'color': Colors.teal},
    {'title': 'Belgesel', 'color': Colors.brown},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Ne dinlemek istiyorsun?',
            hintStyle: TextStyle(color: Colors.white70),
            prefixIcon: Icon(Icons.search, color: Colors.white),
            filled: true,
            fillColor: Colors.grey[900],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        SizedBox(width: 6,),
        Text("Hepsine göz at",style: TextStyle(color: Colors.white,)),

          Expanded(child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 2.5,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: categories[index]['color'],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  categories[index]['title'],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
          )
    ]
      ),
    );
  }
}
