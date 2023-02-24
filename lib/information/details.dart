import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  // String name, data;
  // String img1,img2;

  // Details(this.name, this.data,this.img1,this.img2);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    List details=ModalRoute.of(context)!.settings.arguments as List;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text(
          "${details[0]}",
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 30,
              fontWeight: FontWeight.w500,
              letterSpacing: 2),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 400,
              child: Row(
                children: [
                 Expanded(
                   child: Container(
                     height: 400,
                     width: 400,
                     child:  Image.asset("${details[2]}", fit: BoxFit.fill),
                   ),
                 ),
                  Expanded(
                    child: Container(
                      height: 400,
                      width: 400,
                      child:   Image.asset("${details[3]}", fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 400,
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: Text(
                "${details[1]}",
                style:
                    TextStyle(fontSize: 18, color: Colors.black, wordSpacing: 2,letterSpacing: 3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
