import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class MahasiswaController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> GetData() async {
    CollectionReference mahasiswa = firestore.collection('mahasiswa');
    return mahasiswa.get();
  }

  Stream<QuerySnapshot<Object?>> StreamData() {
    CollectionReference mahasiswa = firestore.collection('mahasiswa');
    return mahasiswa.snapshots();
  }
}
