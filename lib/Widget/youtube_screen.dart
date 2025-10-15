import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ForceVideoSection extends StatelessWidget {
  const ForceVideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final videos = [
      {
        'id': 'FvR4gV1Z0fA',
        'title':
        "Foreign Minister Muttaqi's Visit has Opened a New Opportunity for India & Pakistan",
      },
      {
        'id': 'yVQk3Hq-5-s',
        'title':
        "Palestine Needs an Honourable Resolution, Not a Peace Plan",
      },
      {
        'id': 'Y6NxtZkpoNg',
        'title':
        "मोदी के शासन में सेना प्रमुख का महत्व नहीं; पाकिस्तान को दी गई चेतावनी खोखली",
      },
    ];

    return Container(
      color: const Color(0xFF1A1A1A), // dark background
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'FORCE',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(width: 6),
              Text(
                'VIDEO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          LayoutBuilder(
            builder: (context, constraints) {
              bool isMobile = constraints.maxWidth < 700;
              return Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 16,
                runSpacing: 24,
                children: videos.map((video) {
                  return SizedBox(
                    width: isMobile
                        ? constraints.maxWidth
                        : (constraints.maxWidth - 32) / 3, // 3 columns
                    child: videoCard(
                      videoId: video['id']!,
                      title: video['title']!,
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }


  Widget videoCard({required String videoId, required String title}) {
    final controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: YoutubePlayer(
            controller: controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.red,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
