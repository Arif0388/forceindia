import 'package:flutter/material.dart';

class AuthorSection extends StatelessWidget {
  const AuthorSection({super.key});

  @override
  Widget build(BuildContext context) {
    final authors = [
      {
        'image': 'https://forceindia.net/media/profile_pics/Ghazala_Wahab.jpg',
        'name': 'Ghazala Wahab',
        'title': '',
      },
      {
        'image': 'https://forceindia.net/media/profile_pics/Pravin_Sawhney.jpg',
        'name': 'Pravin Sawhney',
        'title': '',
      },
      {
        'image': 'https://forceindia.net/media/profile_pics/img1.jpg',
        'name': 'Gp Capt. A.K. Sachdev (Retd)',
        'title': '',
      },
      {
        'image': 'https://forceindia.net/media/profile_pics/BS-Pawar.jpg',
        'name': 'Lt. Gen B.S. Pawar (Retd)',
        'title': '',
      },
      {
        'image': 'https://forceindia.net/media/profile_pics/img3.jpg',
        'name': 'S.K. Sood',
        'title': '',
      },
      {
        'image': 'https://forceindia.net/media/profile_pics/img4.jpg',
        'name': 'Cdr Shrikumar Sangiah (Retd)',
        'title': '',
      },
    ];

    return Container(
      color: const Color(0xFFF9F6F2),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'COLUMNS',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 25),
          LayoutBuilder(
            builder: (context, constraints) {
              bool isMobile = constraints.maxWidth < 700;
              return Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: authors.map((a) {
                  return authorCard(
                    a['image']!,
                    a['name']!,
                    a['title']!,
                    isMobile ? constraints.maxWidth / 2 - 25 : 150,
                  );
                }).toList(),
              );
            },
          ),

          const SizedBox(height: 30),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFB22222),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'See More',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget authorCard(String image, String name, String title, double width) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
            const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              image,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                if (title.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
