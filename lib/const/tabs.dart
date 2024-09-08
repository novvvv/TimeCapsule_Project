import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabInfo {
  final IconData icon;
  final String label;

  const TabInfo({required this.icon, required this.label});
}

const TABS = [
  TabInfo(
    icon: Icons.ac_unit_outlined,
    label: 'page1',
  ),
  TabInfo(
    icon: Icons.account_box_rounded,
    label: 'page2',
  ),
];