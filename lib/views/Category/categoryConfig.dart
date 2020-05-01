import 'package:flutter/material.dart';

class CategoryConfig {
  final String enTitle;
  final String cnTitle;
  final IconData icon;

  CategoryConfig({
    this.enTitle,
    this.cnTitle,
    this.icon
  });
}

List<CategoryConfig> categoryConfig = [
  CategoryConfig(
    enTitle: 'ahgdsa',
    cnTitle: '测试as',
    icon: Icons.add_box
  ),
  CategoryConfig(
    enTitle: 'ahgdsa',
    cnTitle: '测试as',
    icon: Icons.music_note
  ),
  CategoryConfig(
    enTitle: 'ahgdsa',
    cnTitle: '测试as',
    icon: Icons.pages
  ),
];
