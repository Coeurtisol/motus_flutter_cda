import 'package:motus_flutter_cda/data/firestore/word_firestore.dart';

import '../firestore/word_firestore.dart';

class WordRepository{
  static WordRepository? _instance;
  static WordFirestore _wordFirestore = WordFirestore.getInstance();

  static WordRepository getInstance(){
    _instance ??= WordRepository._();
    return _instance!;
  }
  WordRepository._();

  // Future<Word?> signIn({required String email, required String password})async {
  //   UserCredential userCredential = await _userFirestore.signInWithCredentials(email: email, password: password);
  //   return userCredential.user;
  // }
  // Future<User?> signUp({required String email, required String password})async {
  //   UserCredential userCredential = await _userFirestore.signUp(email: email, password: password);
  //   return userCredential.user;
  // }

}
