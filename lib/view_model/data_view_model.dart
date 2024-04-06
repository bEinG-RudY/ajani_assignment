// import 'package:ajani_assignment/model/data_model.dart';
// import 'package:flutter/material.dart';

// class DataViewModel extends ChangeNotifier {
//   late bool _isLoading;

// List<DataModel>  get parsedJsonList=[ ];

//   bool get isLoading => _isLoading;
//    DataModel fetchData = DataModel();


//   Future loadData() async {
//     _isLoading = true;
//     notifyListeners();
// _isLoading = false;
//     List<dynamic> parsedJsonList = await fetchData.getData();
    
    
//     List<DataModel> userList = parsedJsonList.map((json) => DataModel.fromJson(json)).toList();

//     notifyListeners();
//   }
// }
