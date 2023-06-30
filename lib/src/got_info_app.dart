import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:got_info/src/routing/app_router.dart';


class GotInfoApp extends ConsumerWidget {
   GotInfoApp({super.key});

  final Color _primaryColor = Color(0xFFEF6F66);
  final Color _accentColor = Color(0xff64C4AA);



  MaterialColor _createPrimarySwatch(Color color) {
    List<double> strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (final double strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'got_info_app',
      theme: ThemeData(
        primaryColor: _primaryColor,
        secondaryHeaderColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: _createPrimarySwatch(_primaryColor),
      ),
    );
  }
}
