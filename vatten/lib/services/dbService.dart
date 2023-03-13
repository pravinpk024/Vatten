import 'package:cloud_firestore/cloud_firestore.dart';

class DBService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<DocumentSnapshot> userData() {
    return firestore.doc("users/BXp7zcubIzVdtVShS4BOzf1DnCM2").snapshots();
  }
}
