import 'package:flutter/material.dart';
import 'ayarlar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oyun Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnaEkran(),
    );
  }
}

class AnaEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oyun'),
      ),
      body: Stack(
        children: [
          // Arka plan resmi
          Positioned.fill(
            child: Image.asset(
              'assets/loginscreen.png', // Arka plan resminizin yolunu buraya yazın
              fit: BoxFit.cover,
            ),
          ),

          Container(
            color: Colors.transparent, // Arka planda resmin gözükmesini sağlar
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '🐱',
                    style: TextStyle(fontSize: 40),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 1 / 3), // Yüksekliği 1/3 olarak ayarladım
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Oyuna Başla',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 35),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), // Parantez kapatmayı ekledim
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AyarlarSayfasi()),
                      );
                    },
                    child: Text(
                      'Ayarlar',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 60),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
