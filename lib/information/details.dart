import 'package:country_name/Modal_class/data_Modal.dart';
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
    DataModal d1=ModalRoute.of(context)!.settings.arguments as DataModal;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text(
          "${d1.name}",
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Expanded(
                   child: Container(
                     height: 500,
                     width: 500,
                     child:  Image.asset("${d1.img1}", fit: BoxFit.fill),
                   ),
                 ),
                  Expanded(
                    child: Container(
                      height: 500,
                      width: 500,
                      child:   Image.asset("${d1.img2}", fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 400,
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: Text(
                "${d1.data}",
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
