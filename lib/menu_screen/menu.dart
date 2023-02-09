import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int i = -1;
  List name = [
    "🇮🇳 INDIA 🇮🇳",
    "🇬🇧 ENGLAND 🇬🇧",
    "🇺🇲 AMERICA 🇺🇲",
    "🇦🇺 AUSTRALIA 🇦🇺",
    "🇦🇪 DUBAI 🇦🇪",
    "🇷🇺 RUSSIA 🇷🇺",
    "🇯🇵 JAPAN 🇯🇵",
    "🇨🇳 CHINA 🇨🇳",
    "🇮🇷 IRAN 🇮🇷",
    "🇦🇫 AFGHANISTAN  🇦🇫",
    "🇹🇷 TURKEY 🇹🇷",
    "🇧🇩 BAGLADESH 🇧🇩",
    "🇿🇦 AFICA 🇿🇦",
    "🇳🇿 NEW ZELAND 🇳🇿",
    "🇱🇰 SRI LANKA 🇱🇰",
    "🇳🇵 NEPAL 🇳🇵",
    "🇧🇹 BHUTAN 🇧🇹",
    "🇨🇦 CANADA 🇨🇦",
    "🇳🇴 NORVEY 🇳🇴",
    "🇲🇾 MALAYSIA 🇲🇾",
  ];

  List c1 = [
    Colors.orange.shade800,
    Colors.blue.shade700,
    Colors.red.shade900,
    Colors.blueAccent.shade700,
    Colors.red,
    Colors.white,
    Colors.red.shade700,
    Colors.amber,
    Colors.green,
    Colors.black87,
    Colors.red.shade900,
    Colors.green.shade900,
    Colors.red,
    Colors.red,
    Colors.amber,
    Colors.blueAccent,
    Colors.amber,
    Colors.white,
    Colors.red,
    Colors.blue
  ];
  List c2 = [
    Colors.white,
    Colors.white,
    Colors.blueAccent.shade700,
    Colors.black12,
    Colors.green.shade700,
    Colors.red,
    Colors.red.shade900,
    Colors.amber.shade200,
    Colors.white,
    Colors.red,
    Colors.red.shade500,
    Colors.red,
    Colors.green,
    Colors.white,
    Colors.red,
    Colors.red,
    Colors.white,
    Colors.red,
    Colors.blueAccent,
    Colors.amber.shade500
  ];
  List c3 = [
    Colors.green.shade700,
    Colors.red.shade700,
    Colors.white,
    Colors.red.shade900,
    Colors.black54,
    Colors.blue.shade900,
    Colors.white,
    Colors.red.shade600,
    Colors.redAccent,
    Colors.green.shade600,
    Colors.white,
    Colors.green.shade900,
    Colors.blue.shade900,
    Colors.blue.shade700,
    Colors.deepOrange,
    Colors.blueAccent,
    Colors.deepOrange.shade500,
    Colors.white,
    Colors.white,
    Colors.red
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        leading: Center(
          child: Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            child: Center(
              child: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
        ),
        title: Text(
          "COUNTRY 🌍",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              letterSpacing: 5),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 25,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: name.map((e) => listbox(e, c1[++i], c2[++i], c3[++i])).toList(),
        ),
      ),
    );
  }

  Widget listbox(String name, Color c1, Color c2, Color c3) {
    return Column(children: [
      SizedBox(
        height: 5,
      ),
      Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: [
              c1,
              c2,
              c3,
            ],
          ),
        ),
        child: Center(
          child: Text(
            "$name",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
                color: Colors.blue),
          ),
        ),
      ),
    ]);
    // SizedBox(
    //   height: 5,
    // );
  }
}
