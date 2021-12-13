import '../widgets/dashboardScreen/widgetCounterData.dart';
import 'package:flutter/material.dart';

final List<Widget> counter = [
  WidgetCounterData(
    widgetColor: Colors.cyan.shade400,
    count: '35',
    title: 'Peminjaman',
    iconColor: Colors.cyan.shade400,
  ),
  WidgetCounterData(
    widgetColor: Colors.blue.shade600,
    count: '28',
    title: 'Pengembalian',
    iconColor: Colors.blue.shade600,
  ),
  WidgetCounterData(
    widgetColor: Colors.redAccent.shade400,
    count: '152',
    title: 'Arsip',
    iconColor: Colors.redAccent.shade400,
  ),
];
