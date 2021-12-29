import 'dart:convert';                      // needed for json convert
import 'package:flutter/services.dart';     // needed for folder location

import 'dataitem.dart';

class DataRepo {

  int length() {
    return imageFileList.length;
  }

  String getImageFile(int idx) {
    //return imageFilePrfix + imageFileList[idx];
    return imageFilePrfix + items[idx].imageFile;
  }

  String getImageTitle(int idx) {
    return items[idx].name;
  }

  final String imageFilePrfix = "assets/images/";

  List<DataItem> items = [];

  InitWithJson( ) {
    _readJson();
  }

  Future<void> _readJson() async {
    final String response =  await rootBundle.loadString('assets/text/image_list.json');

    final List<dynamic> data = await json.decode(response);
    items = [];
    for (dynamic it in data) {
      final DataItem item = DataItem.fromJson(it);    // Parse data for one DataItem
      items.add(item);                                // add item to items List
    }
  }

  InitEmpty() {
    DataItem item = new DataItem(0, 'loading_image.gif', 'Loading', 'Loading from JSON');
    items.add(item);
  }

  InitInCode(){
    DataItem item = new DataItem(1,'by_the_fire_1.jpg', 'By the Fire', 'Chippewa Camp Scene');
    item.setGawboyDescription('The series of paintings in which fire light was kind of common theme.');
    items.add(item);

    item = new DataItem(2,'by_the_fire_2.jpg', 'By the Fire', 'Storyteller');
    item.setGawboyDescription('This is a cutout figure. It is painted on plywood and the plywood cutout kind of suggests a three dimensional form. This is a lady who is very good at telling stories sitting by the fire, her face is lit from underneath as she holding her audience spellbound.  In the foreground you can see some rocks. ');
    items.add(item);

    item = new DataItem(3,'by_the_fire_3.jpg', 'By the Fire', 'Joining the Women');
    item.setGawboyDescription('This is a girls coming of age ceremony just a part of it. The ceremony would be rather long lasting. In this painting the older women or older relatives telling her wisdom among other things herbal medicine, the duties of womanhood.');
    items.add(item);

    item = new DataItem(4,'by_the_fire_4.jpg', 'By the Fire', 'Joining the Women 2');
    item.setGawboyDescription('This was done on a plywood cut out. The plywood cut out was in a dome shape like a woman’s house and you have virtually the same type of scene.  ');
    items.add(item);

    item = new DataItem(5,'by_the_fire_5.jpg', 'By the Fire', 'Storyteller 2');
    item.setGawboyDescription('This is another piece from the Storyteller group. The Storyteller group is one of the other figurines, you see that same rock down there in the lower part of the slide. This is a plywood cut out about 8" high like the other one and this is one of the listeners to the Storyteller. ');
    items.add(item);

    item = new DataItem(6,'in_the_circle_1.jpg', 'In the Circle', 'Nanboujou and Mishipishu');
    item.setGawboyDescription('This was done in 1993.  The Nanboujou had wounded the great panther curly tail and the great panther offered the riches of world to anyone who could cure him.  ');
    items.add(item);

    item = new DataItem(7,'in_the_circle_2.jpg', 'In the Circle', 'Lowering the Flag, Ball Club');
    item.setGawboyDescription('This was done in 1993.  The Nanboujou had wounded the great panther curly tail and the great panther offered the riches of world to anyone who could cure him.  ');
    items.add(item);

    item = new DataItem(8,'in_the_circle_3.jpg', 'In the Circle', 'Veteran’s Farewell');
    item.setGawboyDescription('This was done in 1993.  The Nanboujou had wounded the great panther curly tail and the great panther offered the riches of world to anyone who could cure him.  ');
    items.add(item);
  }

  // See https://docs.flutter.dev/development/data-and-backend/json and https://www.kindacode.com/article/how-to-read-local-json-files-in-flutter/
  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);
    items = data["items"];

  }



  final List<String> imageFileList = [
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

}