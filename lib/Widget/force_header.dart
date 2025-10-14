// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// class ForceHeader extends StatelessWidget {
//   const ForceHeader({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final date = DateFormat('EEEE, MMMM d, y').format(DateTime.now());
//
//     return Column(
//       children: [
//         Container(
//           width: double.infinity,
//           color: Colors.white,
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 date,
//                 style: const TextStyle(fontSize: 14, color: Colors.black87),
//               ),
//               Row(
//                 children: const [
//                   Text(
//                     "Latest: ",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.black87),
//                   ),
//                   Text(
//                     "Red Letter Days",
//                     style: TextStyle(
//                         color: Colors.blueAccent,
//                         decoration: TextDecoration.underline),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//
//         const Divider(height: 0, color: Colors.black26),
//
//         // 🔹 Social icons + Logo + Search
//         Container(
//           color: Colors.white,
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               // Social icons
//               Row(
//                 children: const [
//                   Icon(Icons.alternate_email, size: 24),
//                   SizedBox(width: 12),
//                   Icon(Icons.facebook, size: 24),
//                   SizedBox(width: 12),
//                   Icon(Icons.camera_alt, size: 24),
//                   SizedBox(width: 12),
//                   Icon(Icons.play_circle_fill, size: 24),
//                 ],
//               ),
//
//               // Logo
//               Image.asset(
//                 'assets/images/img.jpg',
//                 height: 60,
//               ),
//
//               // Search
//               Container(
//                 width: 250,
//                 height: 40,
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey.shade400),
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//                 child: Row(
//                   children: const [
//                     Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Search Posts',
//                         ),
//                       ),
//                     ),
//                     Icon(Icons.search, color: Colors.black54),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//
//         // 🔹 Navbar section
//         Container(
//           color: const Color(0xFFFEF8F2),
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               _navItem("Home", active: true),
//               _navItem("Indian Military"),
//               _navItem("Paramilitary"),
//               _navItem("Industry"),
//               _navItem("Civil Aviation"),
//               _navItem("Security"),
//               _navItem("Books"),
//               _navItem("Strategic Issues"),
//               _navItem("Register / Login"),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _navItem(String title, {bool active = false}) {
//     return Row(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             color: active ? Colors.red.shade700 : Colors.transparent,
//             borderRadius: BorderRadius.circular(4),
//           ),
//           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//           child: Text(
//             title,
//             style: TextStyle(
//               color: active ? Colors.white : Colors.black,
//               fontWeight: FontWeight.w500,
//               fontSize: 15,
//             ),
//           ),
//         ),
//         if (!["Home", "Books", "Strategic Issues", "Register / Login"]
//             .contains(title))
//           const Icon(Icons.arrow_drop_down, size: 20, color: Colors.black54),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ForceHeader extends StatefulWidget {
  const ForceHeader({super.key});

  @override
  State<ForceHeader> createState() => _ForceHeaderState();
}

class _ForceHeaderState extends State<ForceHeader> {
  String? openMenu; // currently opened dropdown on hover/tap

  @override
  Widget build(BuildContext context) {
    final date = DateFormat('EEEE, MMMM d, y').format(DateTime.now());
    final width = MediaQuery.of(context).size.width;
    final bool isMobile = width < 700;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 🔹 Top bar
        Container(
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(date,
                  style: const TextStyle(fontSize: 14, color: Colors.black87)),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("Latest: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87)),
                  Text("Red Letter Days",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          decoration: TextDecoration.underline)),
                ],
              ),
            ],
          ),
        ),

        const Divider(height: 0, color: Colors.black26),

        // 🔹 Social + Logo + Search
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: isMobile
              ? Column(
            children: [
              _socialRow(),
              const SizedBox(height: 12),
              _logo(),
              const SizedBox(height: 12),
              _searchBox(width * 0.8),
            ],
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _socialRow(),
              _logo(),
              _searchBox(250),
            ],
          ),
        ),

        // 🔹 Navbar + Dropdowns
        Container(
          color: const Color(0xFFFEF8F2),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: isMobile ? _mobileNavbar() : _desktopNavbar(),
        ),
      ],
    );
  }

  // ------------------ 🔹 Components ------------------

  Widget _socialRow() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Icon(Icons.alternate_email, size: 22),
      SizedBox(width: 10),
      Icon(Icons.facebook, size: 22),
      SizedBox(width: 10),
      Icon(Icons.camera_alt, size: 22),
      SizedBox(width: 10),
      Icon(Icons.play_circle_fill, size: 22),
    ],
  );

  Widget _logo() => Image.asset(
    'assets/images/img.jpg',
    height: 55,
  );

  Widget _searchBox(double width) => Container(
    width: width,
    height: 40,
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade400),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Row(
      children: const [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search Posts',
              isCollapsed: true,
            ),
          ),
        ),
        Icon(Icons.search, color: Colors.black54),
      ],
    ),
  );

  // ------------------ 🔹 Navbar for Desktop ------------------

  Widget _desktopNavbar() {
    final menuItems = {
      "Indian Military": ["Army", "Navy", "Air Force"],
      "Paramilitary": ["CRPF", "BSF", "CISF"],
      "Industry": ["Defence Deals", "Make in India"],
      "Civil Aviation": ["Airlines", "Airports"],
      "Security": ["Cyber Security", "Homeland"],
    };

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _navItem("Home", active: true),
        ...menuItems.keys.map((key) => _hoverMenu(key, menuItems[key]!)).toList(),
        _navItem("Books"),
        _navItem("Strategic Issues"),
        _navItem("Register / Login"),
      ],
    );
  }

  // 🔸 Hover dropdown
  Widget _hoverMenu(String title, List<String> subItems) {
    return MouseRegion(
      onEnter: (_) => setState(() => openMenu = title),
      onExit: (_) => setState(() => openMenu = null),
      child: Column(
        children: [
          Row(
            children: [
              _navItem(title),
              const Icon(Icons.arrow_drop_down, size: 18),
            ],
          ),
          if (openMenu == title)
            Container(
              margin: const EdgeInsets.only(top: 4),
              padding: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26.withOpacity(0.1),
                      blurRadius: 6,
                      offset: const Offset(0, 3))
                ],
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: subItems
                    .map((item) => InkWell(
                  onTap: () {},
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 8),
                    child: Text(item,
                        style: const TextStyle(
                            color: Colors.black87, fontSize: 14)),
                  ),
                ))
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }

  // ------------------ 🔹 Navbar for Mobile ------------------

  Widget _mobileNavbar() {
    final menuItems = {
      "Indian Military": ["Army", "Navy", "Air Force"],
      "Paramilitary": ["CRPF", "BSF", "CISF"],
      "Industry": ["Defence Deals", "Make in India"],
      "Civil Aviation": ["Airlines", "Airports"],
      "Security": ["Cyber Security", "Homeland"],
    };

    return Column(
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 4,
          alignment: WrapAlignment.center,
          children: [
            _navItem("Home", active: true),
            for (var key in menuItems.keys)
              GestureDetector(
                onTap: () => setState(() {
                  openMenu = openMenu == key ? null : key;
                }),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _navItem(key),
                        const Icon(Icons.arrow_drop_down, size: 18),
                      ],
                    ),
                    if (openMenu == key)
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26.withOpacity(0.1),
                                blurRadius: 5)
                          ],
                        ),
                        child: Column(
                          children: menuItems[key]!
                              .map((sub) => Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 4),
                            child: Text(sub,
                                style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 13)),
                          ))
                              .toList(),
                        ),
                      ),
                  ],
                ),
              ),
            _navItem("Books"),
            _navItem("Strategic Issues"),
            _navItem("Register / Login"),
          ],
        ),
      ],
    );
  }

  // ------------------ 🔹 Navbar Item ------------------

  Widget _navItem(String title, {bool active = false}) {
    return Container(
      decoration: BoxDecoration(
        color: active ? Colors.red.shade700 : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Text(
        title,
        style: TextStyle(
          color: active ? Colors.white : Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}
