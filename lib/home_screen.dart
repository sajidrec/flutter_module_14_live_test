import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_moduel_14_livetest/weather_info_json.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List weatherDataList = [];

  @override
  void initState() {
    super.initState();
    weatherDataList = getJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Weather Info App",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 3,
      ),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ListView.builder(
          itemCount: weatherDataList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "City: ${weatherDataList[index]["city"]}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Tempurature: ${weatherDataList[index]["temperature"]}°C",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      "Condition: ${weatherDataList[index]["condition"]}",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      "Humidity ${weatherDataList[index]["humidity"]}%",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      "WindSpeed ${weatherDataList[index]["windSpeed"]} m/s",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
