import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_sub_collections/models/category_model.dart';

class MyProvider with ChangeNotifier {
  //------------------------------------------>> Retrieve recent orders <<-------------------------------------------------------------
  List<CategoryModel> categoryModelList = [];
  CategoryModel categoryModel;

  Future<void> getCategoryProduct() async {
    List<CategoryModel> list = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection("homecategory").get();

    querySnapshot.docs.forEach((categorydata) {
      categoryModel = CategoryModel(
        image: categorydata.get("image"),
        name: categorydata.get("name"),
        resturantName: categorydata.get("resturantName"),
        date: categorydata.get("date"),
      );

      list.add(categoryModel);
    });

    categoryModelList = list;
    notifyListeners();
  }

  List<CategoryModel> get getCategoryModelList {
    return categoryModelList;
  }

//------------------------------------------------------------------------------------------------------------------------------

}
