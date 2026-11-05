import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFFF8EF),
        appBar: AppBar(
          title: const Text('Rasa Nusantara'),
          backgroundColor: const Color(0xFF8D493A),
          foregroundColor: Colors.white,
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'KULINER KHAS',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFB56A42),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Pempek Candy',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF65372C),
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.place,
                              color: Color(0xFFB56A42),
                              size: 18,
                            ),
                            SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                'Palembang, Sumatera Selatan',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1555939594-58d7cb561ad1',
                      width: 125,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF1E2D0),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cerita di Balik Rasa',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF65372C),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Pempek merupakan makanan khas Palembang '
                      'yang dibuat dari ikan dan tepung sagu. '
                      'Hidangan ini biasanya disajikan bersama '
                      'kuah cuko bercita rasa asam, manis, dan pedas. '
                      'Rasanya menjadikan pempek salah satu '
                      'kuliner yang banyak dicari oleh pengunjung.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                'Sebelum Berkunjung',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF65372C),
                ),
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: infoCard(
                      Icons.thumb_up,
                      'Favorit',
                      'Pempek',
                      const Color(0xFFB56A42),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: infoCard(
                      Icons.restaurant,
                      'Menu',
                      'Tradisional',
                      const Color(0xFF56806A),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: infoCard(
                      Icons.shopping_bag,
                      'Pilihan',
                      'Bawa Pulang',
                      const Color(0xFF557A9C),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              const Text(
                'Nikmati Kuliner Lokal',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF65372C),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Kenali cita rasa khas daerah melalui '
                'hidangan yang menjadi kebanggaan masyarakat.',
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.restaurant_menu),
                  label: const Text('Lihat Kuliner'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8D493A),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget infoCard(
    IconData icon,
    String title,
    String value,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 27),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}