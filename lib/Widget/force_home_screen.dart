import 'package:flutter/material.dart';

class ForceHomeSection extends StatelessWidget {
  const ForceHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool isMobile = width < 900;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: const Color(0xFF063A63),
          padding: const EdgeInsets.all(20),
          child: isMobile
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://forceindia.net/wp-content/uploads/2023/02/The-Hindi-Heartland.jpg',
                width: 150,
              ),
              const SizedBox(height: 10),
              const Text(
                "Now in Stores",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "The first authoritative study of the Hindi belt’s history, society, politics, economy, and culture based on meticulous research...",
                style: TextStyle(color: Colors.white70, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/book2.jpg',
                width: 200,
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Now in Stores",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "The first authoritative study of the Hindi belt’s history, society, politics, economy, languages, and culture based on meticulous research and interviews...",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          height: 1.4),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: isMobile
              ? Column(
            children: [
              latestNewsSection(isMobile,context),
              const SizedBox(height: 24),
              shortTakesSection(),
              const SizedBox(height: 24),
              sidebarSection(isMobile),
            ],
          )
              : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 2, child: latestNewsSection(isMobile,context)),
              const SizedBox(width: 24),
              const SizedBox(width: 24),
              Expanded(flex: 2, child: shortTakesSection()),
              const SizedBox(width: 24),
              Expanded(flex: 1, child: sidebarSection(isMobile)),
            ],
          ),
        ),
        // serviceNewsSection(),
      ],
    );
  }


  Widget latestNewsSection(bool isMobile,BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.red.shade800,
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Text(
            "LATEST NEWS",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                'assets/images/img.jpg',
                width: double.infinity,
                height: isMobile ? 180 : 250,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: const Text(
                  "HENSOLDT Shows TAROSS, Effective Target Acquisition & Reconnaissance Solution",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height:15),
        Row(
          children: [
            Text('Read '),
            Text('FORCE',style:TextStyle(color:Colors.red)),
            Text('to see what makes the difference.'),
          ],
        ),
        SizedBox(height:25),
        Text('FORCE puts news into perspective',style:TextStyle(color:Colors.red,fontSize:20)),
        SizedBox(height:10),
        Container(
          width:MediaQuery.of(context).size.width/2,
          height:40,
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(15),
            color:Colors.red,
          ),
          child:Center(child: Text('SUBSCRIBE NOW',style:TextStyle(fontSize:18,color:Colors.white))),
        ),
      ],
    );
  }

  Widget shortTakesSection() {
    final shortTakes = [
      {
        "title": "Short, Sharp and Intense",
        "desc":
        "India’s new warfighting grammar of scalpel, spear and shield is designed to win wars on its own clock"
      },
      {
        "title": "Make and Build in India",
        "desc":
        "Self-reliance in aero engines through Safran deal will help bypass delays"
      },
      {
        "title": "Move With Caution",
        "desc":
        "National interest and security must be kept above parochial service interests when planning for the future"
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "SHORT TAKES",
          style: TextStyle(
            color: Color(0xFF8B0000),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 10),
        for (var item in shortTakes)
          Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item["title"]!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item["desc"]!,
                  style: const TextStyle(
                      fontSize: 14, color: Colors.black87, height: 1.4),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget sidebarSection(bool isMobile) {
    final sidebarImages = [
      {
        "title": "Current Print Edition",
        "url":
        "https://forceindia.net/media/banners/print-editions/oct%20Cover%20hires.jpg"
      },
      {
        "title": "The Hindi Heartland",
        "url":
        "https://forceindia.net/wp-content/uploads/2023/02/The-Hindi-Heartland.jpg"
      }
    ];

    return Column(
      crossAxisAlignment:
      isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        for (var item in sidebarImages)
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment:
              isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [
                Text(
                  item["title"]!,
                  style: const TextStyle(
                    color: Color(0xFF8B0000),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    item["url"]!,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget serviceNewsSection(){
    List<Map<String,dynamic>> news = [
      {
        'title':'AIR FORCE DAY PARADE 2025',
        'image':'',
        'date':'October 14, 2025',
        'comment':'2'
      },
      {
        'title':'DRDO releases the Indian Radio Software Architecture standard 1.0 to enable interoperability in Military Communication',
        'image':'',
        'date':'October 12, 2025',
        'comment':'2'
      },
      {
        'title':'THE INDIAN NAVY QUIZ – THINQ 2025 ADVANCES TO ZONAL SELECTIONS',
        'image':'',
        'date':'October 11, 2025',
        'comment':'4'
      },
      {
        'title':'INS ABHAY AND INFAC T-82 DECOMMISSIONED',
        'image':'',
        'date':'October 8, 2025',
        'comment':'8'
      },
      {
        'title':'EXERCISE KONKAN - 2025 COMMENCES ON THE WESTERN SEABOARD',
        'image':'',
        'date':'October 5, 2025',
        'comment':'7'
      },
    ];
    return Column(
      children: [
        Text('Service News',style:TextStyle(color:Colors.red,fontSize:15)),
        SizedBox(height:20),
        Expanded(
          child: ListView.builder(itemBuilder:(context, index) {
            final data = news[index];
            return Card(
              child: ListTile(
                leading:Container(
                  width:200,
                  height:100,
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.only(topLeft:Radius.circular(10),bottomLeft:Radius.circular(10))
                  ),
                  child:Image.asset(data['image'],fit:BoxFit.cover),
                ),
                title:Text(data['title']),
                subtitle:Row(
                  children: [
                    Icon(Icons.calendar_month_outlined),
                    SizedBox(width:5),
                    Text(data['date']),
                    SizedBox(width:5),
                    Icon(Icons.comment),
                    SizedBox(width:5),
                    Text(data['comment'])
                  ],
                ),
              ),
            );
          },),
        )
      ],
    );
  }
}
