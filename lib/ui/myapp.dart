import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:motus_flutter_cda/ui/screens/global/main_page.dart';
import 'package:motus_flutter_cda/ui/screens/login/login.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final BeamerDelegate routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(routes: {
      '/': (context, state, data) => const LoginPage(),
      '/home': (context, state, data) => const MainPage(),
    }),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Motus CDA",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      backButtonDispatcher:
          BeamerBackButtonDispatcher(delegate: routerDelegate)
    );
  }
}
