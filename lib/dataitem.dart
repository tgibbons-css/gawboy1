class DataItem {

  int num;
  String imageFile;
  String catagory;
  String name;
  String gawboyDescription;

  DataItem(this.num, this.imageFile, this.catagory, this.name);
  /*
  DataItem(int num, String imageFile, String category, String name){
    this.num = num;
    this.imageFile = imageFile;
    this.catagory = category;
    this.name = name;
  }
  */

  DataItem.fromJson(Map<String, dynamic> json)
      : num = json['num'],
        imageFile = json['imageFile'],
        catagory = json['catagory'],
        name = json['name'],
        gawboyDescription = json['gawboyDescription'];

  Map<String, dynamic> toJson() => {
    'num': num,
    'imageFile': imageFile,
    'catagory': catagory,
    'name': name,
    'gawboyDescription': gawboyDescription,
  };

  setGawboyDescription(String newDescription) {
    gawboyDescription = newDescription;
  }

}
