import 'package:flutter/material.dart';
import 'package:student_detail_with_provider/Screen/HomeScreen/Model/ModelClass.dart';

class DetailProvider extends ChangeNotifier
{
  List<Model> StudentDetail = [];


  void AddData(Model m1)
  {
    StudentDetail.add(m1);
    notifyListeners();
  }
  void DeletData(int index)
  {
    StudentDetail.removeAt(index);
    notifyListeners();
  }
  void UpdateData(int index,Model m1)
  {
    StudentDetail[index] = m1;
    notifyListeners();
  }
}