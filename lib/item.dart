import 'package:flutter/material.dart';

@immutable
class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 42;

  Item(this.id, this.name)
      : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode
  {
    return id;
  }

  @override
  bool operator ==(Object other) {
    if (other is Item) {
      return other.id == id;
    }
    return false;
  }
}