import 'package:flutter/foundation.dart';
import 'item.dart';
import 'catlog.dart';

class CartModel extends ChangeNotifier{

  late CatlogModel _catalog;
  final List<int> _itemIds = [];
  CatlogModel get catalog => _catalog;

  set catalog(CatlogModel newCatalog) {
    _catalog = newCatalog;
    notifyListeners();
  }

  List<Item> get items {
    List<Item> itemList = _itemIds.map((id) {
      return _catalog.getById(id);
    }).toList();
    return itemList;
  }

  int get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemIds.add(item.id);
    notifyListeners();
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
    notifyListeners();
  }
}