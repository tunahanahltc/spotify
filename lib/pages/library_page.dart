import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  final List<Map<String, String>> playlists = [
    {'title': 'Beğenilen Şarkılar', 'subtitle': 'Çalma listesi • 12 şarkı'},
    {'title': 'This Is Sıla', 'subtitle': 'Çalma listesi • Spotify'},
    {'title': 'Best', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': 'This Is Pera', 'subtitle': 'Çalma listesi • Spotify'},
    {'title': '3. Çalma Listem', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': 'Anlamazdın', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': 'A', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': 'Yoldayız', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': 'Workout Vibes', 'subtitle': 'Çalma listesi • Spotify'},
    {'title': 'Chill & Relax', 'subtitle': 'Çalma listesi • 25 şarkı'},
    {'title': 'Türkçe Rock', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': '90lar Pop', 'subtitle': 'Çalma listesi • 40 şarkı'},
    {'title': 'Jazz Nights', 'subtitle': 'Çalma listesi • Spotify'},
    {'title': 'This Is Teoman', 'subtitle': 'Çalma listesi • Spotify'},
    {'title': 'Rap Türk', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': 'Lo-Fi Study', 'subtitle': 'Çalma listesi • 60 şarkı'},
    {'title': 'Metallica Best', 'subtitle': 'Çalma listesi • Spotify'},
    {'title': 'Akustik Şarkılar', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': 'Arabesk Zamanı', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': 'Motive Ol', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': 'Deep House', 'subtitle': 'Çalma listesi • 50 şarkı'},
    {'title': 'Popüler Hitler', 'subtitle': 'Çalma listesi • Spotify'},
    {'title': 'Pazar Sabahı', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': 'Film Müzikleri', 'subtitle': 'Çalma listesi • 35 şarkı'},
    {'title': 'This Is Duman', 'subtitle': 'Çalma listesi • Spotify'},
    {'title': 'Indie Hits', 'subtitle': 'Çalma listesi • 45 şarkı'},
    {'title': 'Alternatif', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': 'Geceler', 'subtitle': 'Çalma listesi • Tunahan'},
    {'title': 'Summer Vibes', 'subtitle': 'Çalma listesi • Spotify'},
    {'title': 'Unutulmaz Şarkılar', 'subtitle': 'Çalma listesi • Tunahan'}
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Kitaplığın',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: () {
            },
          ),
        ],
      ),

      body:Column(
      children: [
        Container(
          color: Colors.black,
          padding: EdgeInsets.only(left: 5, bottom: 20),
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
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,

                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            "Tümü",
                            style: TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  GestureDetector(

                    child: Container(
                      decoration: BoxDecoration(
                        color:Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(16),

                      ),
                      padding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            "Müzik",
                            style: TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color:Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(16),

                      ),
                      padding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            "Podcast'ler",
                            style: TextStyle(
                              color:Colors.white,
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

     Expanded(child:ListView.builder(
        itemCount: playlists.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.music_note, color: Colors.white),
            title: Text(playlists[index]['title']!, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
            subtitle: Text(playlists[index]['subtitle']!, style: TextStyle(color: Colors.grey)),
            onTap: () {},
          );
        },
      ),
     )
      ]
      ),
    );
  }
}
