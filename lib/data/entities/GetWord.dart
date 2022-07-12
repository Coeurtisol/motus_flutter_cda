import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class GetWord extends StatelessWidget {
final String id;

GetWord(this.id);

@override
Widget build(BuildContext context) {
  CollectionReference words = FirebaseFirestore.instance.collection('word');

  return FutureBuilder<DocumentSnapshot>(
    future: words.doc(id).get(),
    builder:
        (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

      if (snapshot.hasError) {
        return Text("Something went wrong");
      }

      if (snapshot.hasData && !snapshot.data!.exists) {
        return Text("Document does not exist");
      }

      if (snapshot.connectionState == ConnectionState.done) {
        Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
        return Text("Full Name: ${data['word']} ${data['length']}");
      }

      return Text("loading");
    },
  );
}
}