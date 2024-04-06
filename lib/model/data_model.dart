import 'dart:convert';
import 'package:http/http.dart' as http;

class DataModel {
  // String? name;
  // String? photo;
  // String? phone;
  // String? coins;
  // String? membership;
  // String? icon;
  // String? title;
  // String? summary;
  // String? coin;

  // DataModel(
  //     {this.name,
  //     this.photo,
  //     this.phone,
  //     this.coins,
  //     this.membership,
  //     this.icon,
  //     this.title,
  //     this.summary,
  //     this.coin});

  getData() async {
    var response = await http
        .get(Uri.parse("https://ajanitech.com/test/chat-app-x/user-2.json"));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      throw Exception("Data not found");
    }
  }

  // factory DataModel.fromJson(Map<String, dynamic> json) {
  //   return DataModel(
  //     id: json['id'],
  //     name: json['name'],
  //     email: json['email'],
  //   );
  // }
}
