import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';

class MenuItemModel {
  IconData? _icon;
  String? _name;
  bool? _isNew;

  MenuItemModel(this._icon, this._name, this._isNew);

  MenuItemModel.fromJson(data) {
    _icon = data['icon'];
    _name = data['name'];
    _isNew = data['new'] ?? false;
  }

  bool get isNew => _isNew!;

  set isNew(bool value) {
    _isNew = value;
  }

  String get name => _name!;

  set name(String value) {
    _name = value;
  }

  IconData get icon => _icon!;

  set icon(IconData value) {
    _icon = value;
  }
}
