import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  String name, data;
  String img1,img2;

  Details(this.name, this.data,this.img1,this.img2);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text(
          "${widget.name}",
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 25,
              fontWeight: FontWeight.w500,
              letterSpacing: 2),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 400,
              child: Row(
                children: [
                 Expanded(
                   child: Container(
                     height: 400,
                     width: 200,
                     child:  Image.asset("${widget.img1}", fit: BoxFit.fill),
                   ),
                 ),
                  Expanded(
                    child: Container(
                      height: 400,
                      width: 200,
                      child:   Image.asset("${widget.img2}", fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.grey,
              child: Text(
                "${widget.data}",
                style:
                    TextStyle(fontSize: 15, color: Colors.amber, wordSpacing: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
