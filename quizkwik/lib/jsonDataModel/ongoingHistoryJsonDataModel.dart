class OngoingHistoryDataModel {
  //data Type
  String? title;
  String? subtitle;
  String? image;
  String? amount;
  String? time;
// constructor
  OngoingHistoryDataModel({
    this.title,
    this.subtitle,
    this.image,
    this.amount,
    this.time,
  });
  //method that assign values to respective datatype vairables
  OngoingHistoryDataModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    image = json['image'];
    amount = json['amount'];
    time = json['time'];
  }
}
