import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseService {

  final String uid; 
  DatabaseService({this.uid});

// Coleectiion Reference
final CollectionReference exampleCollection = Firestore.instance.collection('users');

Future updateUserData(String diet,String name, int strength) async {
return await exampleCollection.document(uid).setData({
  'diet_type' : diet, 
  'name' : name, 
  'strength' : strength,
});
  
}
}