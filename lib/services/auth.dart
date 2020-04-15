import 'package:cocada/models/user.dart';
import 'package:cocada/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance; 
  
  // Create user obje bases on FrebaseUser 

  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid:user.uid) : null; 
  }

  // auth change user stream 

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
    //.map( (FirebaseUser user) => _userFromFirebaseUser(user));
  
  }

  // sign in anom 
  Future signInAnom() async {

    try {
      AuthResult result =  await _auth.signInAnonymously(); 
      FirebaseUser user = result.user; 
      return _userFromFirebaseUser(user); 

    }catch (e){
      print(e.toString()); 
      return null;
    }
  }

  // sign in with  email and passwoed 
  Future signinWIthEmailAndPassword (String email, String password ) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password); 
      FirebaseUser user = result.user; 
      return _userFromFirebaseUser(user); 
      
    } catch (e) {
      print (e.toString()); 
      return null;
    }
  }


  // register with email and password 

  Future registerWIthEmailAndPassword (String email, String password ) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password); 
      FirebaseUser user = result.user; 

      await DatabaseService(uid: user.uid).updateUserData('Vegan', 'Fer', 100); 
      return _userFromFirebaseUser(user); 
      
    } catch (e) {
      print (e.toString()); 
      return null;
    }
  }

  // sign out 


  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }


}
