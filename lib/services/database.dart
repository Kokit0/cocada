import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:cocada/models/Restaurants.dart';
import 'package:cocada/models/Restaurants.dart';
import 'package:cocada/models/Restaurants.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

// Coleectiion Reference
  final CollectionReference exampleCollection =
      Firestore.instance.collection('users');

  Future updateUserData(String diet, String name, int strength) async {
    return await exampleCollection.document(uid).setData({
      'diet_type': diet,
      'name': name,
      'strength': strength,
    });
  }

List<Res> _restListFromSnapshot(QuerySnapshot snapshot) {
  return snapshot.documents.map((doc) {

    return Res(
      name: doc.data['diet_type'] ?? '', 
      sugars: doc.data['name'] ?? '', 
      strength: doc.data['strength'] ?? 0, 

    
    
    );

  }).toList(); 
}

  Stream<List<Res>> get res {
    return exampleCollection.snapshots()
      .map(_restListFromSnapshot);
  }

// // crear objeto
//   List<Res> _resListFromSnapShot(QuerySnapshot snapshot) {
//     return snapshot.documents.map((doc) {
//       return Res(
//         diet: doc.data['diet_type'] ?? '',
//         strength: doc.data['strength'] ?? 0,
//         name: doc.data['name'] ?? 'Anom',
//       );
//     }).toList();
//   }

//   Stream<QuerySnapshot> get Res {
//     return exampleCollection.snapshots().map(_resListFromSnapShot);
//   }

// get stream

  Stream<QuerySnapshot> get users {
    return exampleCollection.snapshots();
  }
}
