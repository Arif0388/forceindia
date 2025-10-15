import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:forceindia/Widget/author_section.dart';
import 'package:forceindia/Widget/footer_section.dart';
import 'package:forceindia/Widget/force_header.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../Widget/youtube_screen.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    final List<Map<String, String>> newsList = [
      {
        'image': 'assets/images/heli.jpg',
        'headline':
        'Airbus, TASL Launch Made in India H125; to take Flight from Karnataka',
        'tag': 'LATEST NEWS',
      },
      {
        'image': 'assets/images/book.jpg',
        'headline': 'India’s New Defence Strategy Launched',
        'tag': 'DEFENCE UPDATE',
      },
      {
        'image': 'assets/images/plane.jpg',
        'headline': 'IAF Adds New Fighter Jets to Its Fleet',
        'tag': 'AIRFORCE',
      },
    ];

    final List<Map<String, String>> shortTakes = [
      {
        'title': 'Short, Sharp and Intense',
        'desc':
        'India’s new warfighting grammar of scalpel, spear and shield is designed to win wars on its own clock',
      },
      {
        'title': 'Make and Build in India',
        'desc':
        'Self-reliance in aero engines through Safran deal will help bypass delays',
      },
      {
        'title': 'Move With Caution',
        'desc':
        'National interest and security must be kept above parochial service interests when planning for the future',
      },
      {
        'title': 'Beyond Sloganeering',
        'desc':
        'Self-reliance can be achieved only when indigenous aircraft are delivered without delay',
      },
    ];

    final List<Map<String, String>> serviceNews = [
      {
        'image': 'assets/images/airforce.jpg',
        'title': 'AIR FORCE DAY PARADE 2025',
        'date': '2025-10-14',
      },
      {
        'image': 'assets/images/drdo.jpg',
        'title':
        'DRDO releases the Indian Radio Software Architecture standard 1.0 to enable interoperability in Military Communication',
        'date': '2025-10-14',
      },
      {
        'image': 'assets/images/navy.jpg',
        'title':
        'THE INDIAN NAVY QUIZ – THINQ 2025 ADVANCES TO ZONAL SELECTIONS',
        'date': '2025-10-14',
      },
      {
        'image': 'assets/images/submarine.jpg',
        'title': 'INS AHIRAJ AND INFAC T-83 DECOMMISSIONED',
        'date': '2025-10-14',
      },
    ];

    return Column(
      children: [
        const ForceHeader(),

        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            vertical: 50, horizontal: 30),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF00284E), Color(0xFF005B96)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/book.jpg",
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 40),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Now in Stores",
                                    style: GoogleFonts.dancingScript(
                                      fontSize: 36,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Container(
                                    width: 60,
                                    height: 3,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    "The first authoritative study of the Hindi belt’s history, society, politics, economy, "
                                        "languages, and culture based on meticulous research and interviews with key stakeholders "
                                        "by award-winning journalist and writer Ghazala Wahab. The Hindi belt—comprising Bihar, "
                                        "Chhattisgarh, Jharkhand, Madhya Pradesh, Rajasthan, Uttarakhand, and Uttar Pradesh—covers "
                                        "nearly 38 per cent of India’s total area and is home to over 40 per cent of India’s population. "
                                        "It provides the country with over 40 per cent of its parliamentarians and determines the contours "
                                        "of national politics. Yet, it's among the most impoverished regions in the country, plagued by "
                                        "violence, illiteracy, unemployment, corruption, poor life expectancy, and numerous other ills.",
                                    style: GoogleFonts.openSans(
                                      fontSize: 14.5,
                                      color: Colors.white.withOpacity(0.9),
                                      height: 1.7,
                                      letterSpacing: 0.3,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: CarouselSlider(
                                      options: CarouselOptions(
                                        height: 260,
                                        viewportFraction: 1,
                                        autoPlay: true,
                                        enlargeCenterPage: false,
                                      ),
                                      items: newsList.map((news) {
                                        return Stack(
                                          fit: StackFit.expand,
                                          children: [
                                            Image.asset(news['image']!, fit: BoxFit.cover),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Colors.black.withOpacity(0.4),
                                                    Colors.transparent
                                                  ],
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.topCenter,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 10,
                                              left: 10,
                                              child: Container(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 10, vertical: 4),
                                                decoration: BoxDecoration(
                                                  color: Colors.red.shade700,
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child: Text(
                                                  news['tag']!,
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 12,
                                              left: 12,
                                              right: 12,
                                              child: Text(
                                                news['headline']!,
                                                style: GoogleFonts.merriweather(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height:20),
                              Row(
                                children: [
                                  Text('Read FORCE to see what makes the difference.',style:GoogleFonts.poppins(fontSize:16)),
                                ],
                              ),
                              SizedBox(height:20),
                              Row(
                                children: [
                                  Text('FORCE puts news into perspective',style:GoogleFonts.poppins(fontSize:16,color:Colors.red)),
                                ],
                              ),
                              SizedBox(height:20),
                              Row(
                                children: [
                                  Container(
                                    width:250,
                                    height:40,
                                    decoration:BoxDecoration(
                                      borderRadius:BorderRadius.circular(10),
                                      color:Colors.red,
                                    ),
                                    child:Center(child: Text('SUBSCRIBE NOW',style:GoogleFonts.poppins(fontSize:15,color:Colors.white))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),

                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SHORT TAKES",
                                style: GoogleFonts.merriweather(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF7C0000),
                                ),
                              ),
                              const SizedBox(height: 16),
                              for (var take in shortTakes) ...[
                                Text(
                                  take['title']!,
                                  style: GoogleFonts.merriweather(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  take['desc']!,
                                  style: GoogleFonts.openSans(
                                    fontSize: 13.5,
                                    height: 1.5,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(height: 16),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                      const SizedBox(height: 20),
                      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Service News",
                          style: GoogleFonts.merriweather(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF7C0000),
                          ),
                        ),
                        const SizedBox(height: 20),

                        Column(
                          children: serviceNews.map((news) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomLeft: Radius.circular(16),
                                    ),
                                    child: Image.asset(
                                      news['image']!,
                                      width: 130,
                                      height: 110,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 12),


                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            news['title']!,
                                            style: GoogleFonts.merriweather(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.calendar_today_outlined,
                                                size: 14,
                                                color: Colors.grey,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                DateFormat('MMMM dd, yyyy').format(
                                                    DateTime.parse(news['date']!)),
                                                style: GoogleFonts.openSans(
                                                  fontSize: 13,
                                                  color: Colors.grey[700],
                                                ),
                                              ),
                                              const SizedBox(width: 12),
                                              const Icon(
                                                Icons.chat_bubble_outline,
                                                size: 14,
                                                color: Colors.grey,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                "0",
                                                style: GoogleFonts.openSans(
                                                  fontSize: 13,
                                                  color: Colors.grey[700],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                      const SizedBox(height: 20),
                      Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'MORE HEADLINES',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(height: 12),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  'https://cdn.prod.website-files.com/65a0f5e2f3a73fc7e30e9205/65a93e5ba7e5a1583a612a07_H155%20EC155%20Helicopter.webp',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Text(
                                'Airbus, TASL Launch ‘Made in India’ H125; to take Flight from Karnataka',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: const [
                                  Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                                  SizedBox(width: 4),
                                  Text('October 02, 2025',
                                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                                  SizedBox(width: 12),
                                  Icon(Icons.person, size: 14, color: Colors.grey),
                                  SizedBox(width: 4),
                                  Text('ForceIndia',
                                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                                  SizedBox(width: 12),
                                  Icon(Icons.comment, size: 14, color: Colors.grey),
                                  SizedBox(width: 4),
                                  Text('0',
                                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.facebook, color: Colors.black54),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.share, color: Colors.black54),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.email, color: Colors.black54),
                                  ),
                                  const Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red.shade700,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 6),
                                    child: const Text(
                                      'Industry News',
                                      style: TextStyle(color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width:20),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children:  [
                              smallHeadlineCard(
                                image: 'assets/images/book.jpg',
                                title:
                                '4th At Home GE Aerospace has handed over the fourth F404-IN20 engine against the order of 2021 to HAL',
                                date: 'October 01, 2025',
                              ),
                              smallHeadlineCard(
                                image: 'assets/images/img.jpg',
                                title:
                                'L&T forms Strategic Partnership with BEL for the AMCA Programme',
                                date: 'September 24, 2025',
                              ),
                              smallHeadlineCard(
                                image: 'assets/images/book2.jpg',
                                title: 'HENSOLDT Shows TAROSS, Effective Target Acquisition & Reconnaissance Solution',
                                date: 'September 12, 2025',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children:  [
                                  smallHeadlineCard(
                                    image: 'assets/images/book.jpg',
                                    title:
                                    '4th At Home GE Aerospace has handed over the fourth F404-IN20 engine against the order of 2021 to HAL',
                                    date: 'October 01, 2025',
                                  ),
                                  smallHeadlineCard(
                                    image: 'assets/images/img.jpg',
                                    title:
                                    'L&T forms Strategic Partnership with BEL for the AMCA Programme',
                                    date: 'September 24, 2025',
                                  ),
                                  smallHeadlineCard(
                                    image: 'assets/images/book2.jpg',
                                    title: 'HENSOLDT Shows TAROSS, Effective Target Acquisition & Reconnaissance Solution',
                                    date: 'September 12, 2025',
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width:20),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      'https://cdn.prod.website-files.com/65a0f5e2f3a73fc7e30e9205/65a93e5ba7e5a1583a612a07_H155%20EC155%20Helicopter.webp',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  const Text(
                                    'Airbus, TASL Launch ‘Made in India’ H125; to take Flight from Karnataka',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: const [
                                      Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                                      SizedBox(width: 4),
                                      Text('October 02, 2025',
                                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                                      SizedBox(width: 12),
                                      Icon(Icons.person, size: 14, color: Colors.grey),
                                      SizedBox(width: 4),
                                      Text('ForceIndia',
                                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                                      SizedBox(width: 12),
                                      Icon(Icons.comment, size: 14, color: Colors.grey),
                                      SizedBox(width: 4),
                                      Text('0',
                                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.facebook, color: Colors.black54),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.share, color: Colors.black54),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.email, color: Colors.black54),
                                      ),
                                      const Spacer(),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red.shade700,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 6),
                                        child: const Text(
                                          'Service News',
                                          style: TextStyle(color: Colors.white, fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      ForceVideoSection(),
                      const SizedBox(height: 20),
                      AuthorSection(),
                      const SizedBox(height: 20),
                      FooterSection(),
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.orange,
                  child: Scrollbar(
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                          30,
                              (index) => Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              height: 80,
                              color: index.isEven
                                  ? Colors.orange.shade200
                                  : Colors.orange.shade300,
                              child: Center(
                                  child: Text(
                                    'Priyesh Sir ${index + 1}',
                                    style: const TextStyle(color: Colors.black),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget smallHeadlineCard({
    required String image,
    required String title,
    required String date,
    int comments = 0,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16,),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 12, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      date,
                      style: const TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.comment, size: 12, color: Colors.grey),
                    const SizedBox(width: 2),
                    Text(
                      '$comments',
                      style: const TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



