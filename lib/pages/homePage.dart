import 'package:flutter/material.dart';
import 'package:weather_app/pages/searchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.near_me,
            size: 45,
          ),
          actions: [
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchPage()));
                });
              },
              child: Icon(
                Icons.location_city,
                size: 45,
              ),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/sea.jpg'), fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 100,
                left: 120,
                child: Text(
                  '⛅',
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
              ),
              Positioned(
                top: 130,
                left: 40,
                child: Text(
                  '8\u2103',
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
              ),
              Positioned(
                top: 330,
                left: 120,
                child: Text(
                  'Very cold',
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
                //try как приходить информация находит ошибки итд.
                //initstate до скаффолда
                //json formatter
              ),
              Positioned(
                top: 530,
                left: 150,
                child: Text(
                  'Bishkek',
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
