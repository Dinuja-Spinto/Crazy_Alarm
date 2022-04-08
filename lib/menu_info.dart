import 'package:crazy_alarm/enum.dart';
import 'package:flutter/cupertino.dart';

class MenuInfo extends ChangeNotifier{
  MenuType menuType;
  String title;
  String image;

  MenuInfo(this.menuType,{required this.title, required this.image});

  updateMenu(MenuInfo menuInfo){
    this.menuType = menuInfo.menuType;
    this.title = menuInfo.title;
    this.image = menuInfo.image;

    notifyListeners();
  }
}