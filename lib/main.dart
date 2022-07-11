import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:motus_flutter_cda/ui/myapp.dart';
import 'package:motus_flutter_cda/ui/screens/login/login_view_model.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LoginViewModel()),
    ],
    child: MyApp(),
  ));
}
