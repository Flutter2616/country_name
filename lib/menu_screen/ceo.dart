import 'package:flutter/material.dart';

class Ceo extends StatefulWidget {
  const Ceo({Key? key}) : super(key: key);

  @override
  State<Ceo> createState() => _CeoState();
}

class _CeoState extends State<Ceo> {
  List name = [
    "Natarajan Chandrasekaran",
    "Anand Jain",
    "Phil Knight",
    "Bjorn Gluden",
    "Sundar Pichai",
    "Mark Zukerburg",
    "Jan Koum",
    "Gautam Adani",
    "Tim Cook",
    "Charles Wong",
    "Shen Wei",
    "Kim Ki-Nam",
    "Aman Gupta",
    "Nimita Thapre",
    "Piyush Bansal",
    "Amit Jain",
    "ASHNEER GROVER",
    "Anupam Mittal",
    "Rodrigo Arboleda",
    "C. K. Venkataraman"
  ];
  List com = [
    "TATA",
    "RELINCE",
    "NIKE",
    "PUMA",
    "GOOGLE",
    "FACEBOOK",
    "WHATSAPP",
    "ADANI GROUP",
    "APPLE",
    "OPPO",
    "VIVO",
    "SAMSUNG",
    "BOAT",
    "PHARMACY",
    "LENSKART",
    "CAR DEKHO",
    "BHARAT PAY",
    "SHAADI.Com",
    "FASTRACK",
    "TITAN"
  ];
  List color = [[], []];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade200,
        leading: Center(
          child: Icon(
            Icons.account_circle,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text("W", Colors.red),
            text("O", Colors.amber),
            text("R", Colors.brown),
            text("L", Colors.grey),
            text("D", Colors.greenAccent),
            text("C", Colors.pink.shade500),
            text("E", Colors.lime.shade400),
            text("O", Colors.orange.shade500),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: name
                  .asMap()
                  .entries
                  .map((e) => box(
                      name[e.key],
                      com[e.key],
                      e.key % 2 == 0
                          ? Colors.pink.shade500
                          : Colors.blue.shade700,
                      Colors.blue.shade50))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget text(dynamic a, Color c1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 10),
        Container(
          height: 40,
          width: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: c1,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
          ),
          child: Text(
            "$a",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget box(String name, String com, Color c1, Color c2) {
    return Column(
      children: [
        SizedBox(
          height: 3,
          width: 2,
        ),
        Container(
          height: 50,
          alignment: Alignment.centerLeft,
          width: double.infinity,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "   $name",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      wordSpacing: 2,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: "-$com",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    wordSpacing: 2,
                  ),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            gradient: LinearGradient(
              colors: [
                c1,
                c2,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
