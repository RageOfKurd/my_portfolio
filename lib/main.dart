// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(child: MyPortfolio()),
    );
  }
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return (Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),

          ClipRRect(
            borderRadius: BorderRadius.circular(360),
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromRGBO(189, 255, 215, 0.49),
                    width: 8.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(360),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/propic2.png'),
              ),
            ),
          ),

          SizedBox(
            height: 26,
          ),

          Text(
            'RAGEOFKURD',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(64, 64, 64, 1),
            ),
          ),
          SizedBox(
            height: 25,
          ),

          Container(
            width: 250,
            height: 60,
            alignment: Alignment.topCenter,
            child: Text(
              'welcome to my personal portfolio, you can find me with the following links',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(114, 114, 114, 1),
              ),
            ),
          ),
          Links()
        ]),
      ),
    ));
  }
}

class Links extends StatelessWidget {
  const Links({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Section(299, 54, Color.fromRGBO(243, 242, 255, 1),
        // FontAwesomeIcons.linkedinIn, 'LinkedIn Profile'),

        Section(299, 50, Color.fromRGBO(243, 242, 255, 1),
            FontAwesomeIcons.linkedinIn, 'LinkedIn Profile'),
        SizedBox(
          height: 10,
        ),
        Section(299, 50, Color.fromRGBO(199, 228, 255, 1),
            FontAwesomeIcons.facebookF, 'Facebook Profile'),
        SizedBox(
          height: 10,
        ),
        Section(299, 50, Color.fromRGBO(255, 242, 242, 1),
            FontAwesomeIcons.instagramSquare, 'Instagram Profile'),
        SizedBox(
          height: 10,
        ),
        Section(299, 50, Color.fromRGBO(255, 251, 242, 1),
            FontAwesomeIcons.intercom, 'MyWebsite'),
        SizedBox(
          height: 30,
        ),
        Footer(),
      ],
    ));
  }
}

class Section extends StatelessWidget {
  Section(this.width, this.height, this.conColor, this.icon, this.text);

  double width;
  double height;
  Color conColor;
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: conColor),
      // color: Color.fromRGBO(243, 242, 255, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Icon(
              icon,
              color: Colors.black87,
              size: 22,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(360),
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: Color.fromARGB(255, 223, 229, 239)),
            child: Icon(
              FontAwesomeIcons.whatsapp,
              color: Colors.green,
              size: 37,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(360),
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: Color.fromARGB(255, 215, 221, 231)),
            child: Icon(
              FontAwesomeIcons.mailchimp,
              color: Color.fromARGB(255, 59, 68, 60),
              size: 37,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(360),
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: Color.fromRGBO(255, 251, 242, 1)),
            child: Icon(
              FontAwesomeIcons.message,
              color: Colors.green,
              size: 30,
            ),
          ),
        ),
      ],
    ));
  }
}
