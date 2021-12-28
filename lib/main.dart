import 'package:flutter/material.dart';
import 'package:kenburns/kenburns.dart';

import 'datarepo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final PageController ctrl = PageController();

  datarepo repo = new datarepo();

  final String filePrfix = "assets/images/";

  final List<String> fileList = [
    'by_the_fire_1.jpg',
    'by_the_fire_2.jpg',
    'by_the_fire_3.jpg',
    'by_the_fire_4.jpg',
    'by_the_fire_5.jpg',
    'in_the_circle_1.jpg',
    'in_the_circle_2.jpg',
    'in_the_circle_3.jpg',
    'in_the_circle_4.jpg',
    'in_the_circle_5.jpg',
    'in_the_fields_1.jpg',
    'in_the_fields_2.jpg',
    'in_the_fields_3.jpg',
    'in_the_fields_4.jpg',
    'in_the_fields_5.jpg',
    'in_the_fields_6.jpg',
    'in_the_fields_7.jpg',
    'in_the_house_1.jpg',
    'in_the_house_2.jpg',
    'in_the_house_3.jpg',
    'in_the_village_10.jpg',
    'in_the_village_11.jpg',
    'in_the_village_12.jpg',
    'in_the_village_13.jpg',
    'in_the_village_14.jpg',
    'in_the_village_15.jpg',
    'in_the_village_16.jpg',
    'in_the_village_17.jpg',
    'in_the_village_18.jpg',
    'in_the_village_19.jpg',
    'in_the_village_2.jpg',
    'in_the_village_3.jpg',
    'in_the_village_4.jpg',
    'in_the_village_5.jpg',
    'in_the_village_6.jpg',
    'in_the_village_7.jpg',
    'in_the_village_8.jpg',
    'in_the_village_9.jpg',
    'in_the_woods_1.jpg',
    'in_the_woods_10.jpg',
    'in_the_woods_11.jpg',
    'in_the_woods_12.jpg',
    'in_the_woods_2.jpg',
    'in_the_woods_3.jpg',
    'in_the_woods_4.jpg',
    'in_the_woods_5.jpg',
    'in_the_woods_6.jpg',
    'in_the_woods_7.jpg',
    'in_the_woods_8.jpg',
    'in_the_woods_9.jpg',
    'on-the_water_1.jpg',
    'on-the_water_10.jpg',
    'on-the_water_11.jpg',
    'on-the_water_12.jpg',
    'on-the_water_13.jpg',
    'on-the_water_14.jpg',
    'on-the_water_15.jpg',
    'on-the_water_16.jpg',
    'on-the_water_17.jpg',
    'on-the_water_18.jpg',
    'on-the_water_2.jpg',
    'on-the_water_2b.jpg',
    'on-the_water_3.jpg',
    'on-the_water_4.jpg',
    'on-the_water_5.jpg',
    'on-the_water_6.jpg',
    'on-the_water_7.jpg',
    'on-the_water_8.jpg',
    'on-the_water_9.jpg',
    'on_the_prairie_1.jpg',
    'on_the_road_1.jpg',
    'on_the_road_2.jpg',
    'on_the_road_3.jpg',
    'on_the_road_3b.jpg',
    'on_the_road_4.jpg',
    'on_the_road_5.jpg',
    'on_the_shore_1.jpg',
    'on_the_shore_10.jpg',
    'on_the_shore_11.jpg',
    'on_the_shore_12.jpg',
    'on_the_shore_13.jpg',
    'on_the_shore_2.jpg',
    'on_the_shore_3.jpg',
    'on_the_shore_4.jpg',
    'on_the_shore_5.jpg',
    'on_the_shore_6.jpg',
    'on_the_shore_7.jpg',
    'on_the_shore_8.jpg',
    'on_the_shore_9.jpg',
    'on_the_shore_9b.jpg'
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('SlideShow'),
          ),
          body: PageView .builder(
            controller: ctrl,
            itemCount: fileList.length,
            itemBuilder: (context, index) {
              return
                //Image.asset(items[index]);
                KenBurns(maxScale : 2,
                  minAnimationDuration : Duration(milliseconds: 5000),
                  maxAnimationDuration : Duration(milliseconds: 10000),
                  child: Image.asset(filePrfix + fileList[index], fit: BoxFit.cover),
                );
            },
          ),
      ),
    );
  }
}



