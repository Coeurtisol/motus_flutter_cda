import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:motus_flutter_cda/data/entities/word.dart';

class WordFirestore{

  static WordFirestore? _instance;
  static FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  static late final _wordRef;

  static Future<WordFirestore> getInstance()  {
    if(_instance == null) {
      _wordRef = _firebaseFirestore.collection('word')
          .withConverter<Word>(
          fromFirestore: (snapshot, _) => Word.fromJson(snapshot.data()!),
          toFirestore: (word, _) => word.toJson()
      );
    }
      _instance = WordFirestore._();
      return _instance!;
    }

  }

