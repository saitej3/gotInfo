import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:got_info/src/got_info_app.dart';

void main() {
  runApp(ProviderScope(child: GotInfoApp()));
}
