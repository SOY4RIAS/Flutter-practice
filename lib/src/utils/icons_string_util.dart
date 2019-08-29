import 'package:flutter/material.dart';

final _icons = {
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'transform': Icons.transform,
  'text_fields': Icons.text_fields,
};

Icon getIcon({String name, Color color = Colors.black}) {
  return Icon(
    _icons[name],
    color: color,
  );
}
