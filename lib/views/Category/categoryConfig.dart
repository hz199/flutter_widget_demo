import 'package:flutter/material.dart';

class CategoryConfig {
  final String cnTitle;
  final String enTitle;
  final IconData icon;

  CategoryConfig({
    this.cnTitle,
    this.enTitle,
    this.icon
  });
}

List<CategoryConfig> categoryConfig = [
  CategoryConfig(
    cnTitle: '导航',
    enTitle: 'Nav',
    icon: Icons.navigation
  ),
  CategoryConfig(
    cnTitle: '导航',
    enTitle: 'Nav',
    icon: Icons.navigation
  ),
  CategoryConfig(
    cnTitle: '导航',
    enTitle: 'Nav',
    icon: Icons.navigation
  )
];
