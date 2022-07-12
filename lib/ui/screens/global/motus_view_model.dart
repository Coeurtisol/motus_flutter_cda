import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:motus_flutter_cda/data/entities/word.dart';
import 'package:motus_flutter_cda/data/repository/user_repository.dart';
import 'package:motus_flutter_cda/data/repository/word_repository.dart';

class ModusViewModel with ChangeNotifier {
  Word? _word;
  Word? get word => _word;

  Future<DocumentSnapshot<Map<String, dynamic>>>  wordInfos({required String id}) async {
    return WordRepository.getInstance().getInfoWord(id);
  }
}
