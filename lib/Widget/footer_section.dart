import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: const Center(
            child: Text(
              "Please bear with us for a few days. We are making ourselves better",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),

        Container(
          color: const Color(0xFFF9F6F2),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
          child: Column(
            children: [
              const Text(
                "Subscribe To Force",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Fuel Fearless Journalism with Your Yearly Subscription",
                style: TextStyle(color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB22222),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "SUBSCRIBE NOW",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "We don’t tell you how to do your job...",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 6),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "But we put the environment in which you do your job in perspective, so that when you step out you do so with the complete picture.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        ),

        Container(
          color: const Color(0xFFF9F6F2),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: LayoutBuilder(
            builder: (context, constraints) {
              bool isMobile = constraints.maxWidth < 700;
              return isMobile
                  ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  whoReadsForce(),
                  const SizedBox(height: 30),
                  linkColumn(),
                ],
              )
                  : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: whoReadsForce()),
                  const SizedBox(width: 30),
                  linkColumn(),
                ],
              );
            },
          ),
        ),

        Container(
          color: const Color(0xFFB22222),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.facebookF,
                      color: Colors.white, size: 18),
                  const SizedBox(width: 15),
                  Icon(FontAwesomeIcons.twitter, color: Colors.white, size: 18),
                  const SizedBox(width: 15),
                  Icon(FontAwesomeIcons.instagram,
                      color: Colors.white, size: 18),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                "© 2003 - 2025 Force Arrowhead Media Pvt. Ltd. All Rights Reserved",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }


  Widget whoReadsForce() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "WHO READS FORCE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            letterSpacing: 0.5,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "FORCE has managed to grab the right eyeballs within the government of India, "
              "and the top leadership of the services. Today, FORCE has the largest subscription base "
              "from within the three armed (Indian Army, IAF and Navy) and the Paramilitary (CRPF, BSF, ITBP and SSB) "
              "forces in India. FORCE is also read keenly in the industry, by the policy-makers, the strategic community "
              "and the general readers.",
          style: TextStyle(
            fontSize: 13,
            height: 1.5,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }


  Widget linkColumn() {
    final links = [
      "Columns",
      "About Us",
      "Editorial Calendar",
      "Advertise With Us",
      "Contact Us",
      "Interview",
      "About the Editors",
      "Praise for Force",
      "Old Editions",
      "Terms and Conditions",
      "Privacy Policy",
    ];

    return Wrap(
      spacing: 50,
      runSpacing: 8,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: links
              .sublist(0, 5)
              .map((text) => linkText(text))
              .toList(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: links
              .sublist(5)
              .map((text) => linkText(text))
              .toList(),
        ),
      ],
    );
  }

  Widget linkText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        "• $text",
        style: const TextStyle(fontSize: 13, color: Colors.black87),
      ),
    );
  }
}
