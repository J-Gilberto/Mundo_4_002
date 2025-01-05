import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Front Mission'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'images/front_mission.jpg',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Front Mission 3 Remake',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(width: 4),
                            Text('4.2'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Remake do jogo de 2005',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        buildButtonColumn(
                            Icons.calendar_month, 'Data de Lançamento'),
                        buildButtonColumn(Icons.near_me, 'Twitter'),
                        buildButtonColumn(Icons.share, 'Compartilhar'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Front Mission is a tactical role-playing game developed by G-Craft and published by Square Enix. It was released in Japan on February 24, 2005 for the PlayStation 2, and on October 23, 2007 for the Nintendo DS. The game is the fourth main entry and the sixth entry overall in the Front Mission series. Front Mission 5: Scars of the War, a direct sequel to Front Mission 4, was released in Japan on December 29, 2005. The game is set in 2096, when two superpowers, the Oceania Cooperative Union and the Unified Continental States, are at war over the colonization of the moon. The game follows the stories of two separate characters, Darril Traubel and Elsa Eliane, as they uncover a conspiracy that involves the war and the military-industrial complex.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: Colors.blue),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
