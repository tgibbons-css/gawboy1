class DataItem {

  int num;
  String imageFile;
  String catagory;
  String name;
  String gawboyDescription;

  DataItem(int num, String imageFile, String category, String name){
    this.num = num;
    this.imageFile = imageFile;
    this.catagory = category;
    this.name = name;
  }

  setGawboyDescription(String newDescription) {
    gawboyDescription = newDescription;
  }

}
