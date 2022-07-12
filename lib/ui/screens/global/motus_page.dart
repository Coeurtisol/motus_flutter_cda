import 'dart:collection';

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:motus_flutter_cda/data/repository/word_repository.dart';
import 'package:motus_flutter_cda/ui/screens/global/motus_view_model.dart';
import 'package:provider/provider.dart';

class MotusPage extends StatefulWidget {
  const MotusPage({Key? key}) : super(key: key);

  @override
  State<MotusPage> createState() => _MotusPageState();
}

class _MotusPageState extends State<MotusPage> {
  TextEditingController idController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return HashMap<String, dynamic>(WordRepository.getInfoWord('M5c9xDkl5mQsAVsRGaW9'));
  }
}
