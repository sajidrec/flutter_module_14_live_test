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
        title: const Text(
          "Weather Info App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ListView.builder(
          itemCount: weatherDataList.length,
          itemBuilder: (context, index) {
            return buildCard(index);
          },
        ),
      ),
    );
  }

  Card buildCard(int index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "City: ${weatherDataList[index]["city"]}",
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              "Temperature: ${weatherDataList[index]["temperature"]}°C",
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Text(
              "Condition: ${weatherDataList[index]["condition"]}",
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Text(
              "Humidity: ${weatherDataList[index]["humidity"]}%",
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Text(
              "Wind Speed: ${weatherDataList[index]["windSpeed"]} m/s",
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
