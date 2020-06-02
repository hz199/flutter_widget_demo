import 'package:flutter/material.dart';

class CategoryConfig {
  final String cnTitle;
  final String enTitle;
  final IconData icon;
  final String routerUrl;

  CategoryConfig({
    this.cnTitle,
    this.enTitle,
    this.icon,
    @required this.routerUrl
  });
}

List<CategoryConfig> categoryConfig = [
  CategoryConfig(
    cnTitle: '按钮',
    enTitle: 'Button',
    icon: Icons.radio_button_checked,
    routerUrl: '/category/button'
  ),
  CategoryConfig(
    cnTitle: '模态框',
    enTitle: 'Dialog',
    icon: Icons.dialer_sip,
    routerUrl: '/category/dialog'
  ),
  CategoryConfig(
    cnTitle: '日历',
    enTitle: 'DatePicker',
    icon: Icons.date_range,
    routerUrl: '/category/datePicker'
  ),
  CategoryConfig(
    cnTitle: '表单',
    enTitle: 'Form',
    icon: Icons.format_align_right,
    routerUrl: '/category/form'
  ),
  CategoryConfig(
    cnTitle: '滚动视图',
    enTitle: 'ScrollView',
    icon: Icons.screen_lock_landscape,
    routerUrl: '/category/nestedScrollView'
  ),
  CategoryConfig(
    cnTitle: '基础组件',
    enTitle: 'BaseComp',
    icon: Icons.screen_lock_landscape,
    routerUrl: '/category/baseComp'
  ),
  CategoryConfig(
    cnTitle: '动画组件',
    enTitle: 'Animate',
    icon: Icons.filter_b_and_w,
    routerUrl: '/category/Animate'
  )
];
