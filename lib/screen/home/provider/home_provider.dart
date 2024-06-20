import 'package:adv_reexam/screen/home/model/home_model.dart';
import 'package:adv_reexam/utils/helper/api_helper.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  List<CountryModel>? countryModelList = [];

  List likeCountry = [];

  Future<void> getCountry() async {
    ApiHelper apiHelper = ApiHelper();

    countryModelList = await apiHelper.getCountryAPI();
    notifyListeners();
  }

  void like(CountryModel l1) {

    likeCountry.add(l1);
    notifyListeners();
  }

  void removeCountry(int index) {
    likeCountry.removeAt(index);
    notifyListeners();
  }
}
