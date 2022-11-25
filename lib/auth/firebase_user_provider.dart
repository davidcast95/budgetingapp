import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MonnyFirebaseUser {
  MonnyFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MonnyFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MonnyFirebaseUser> monnyFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MonnyFirebaseUser>(
      (user) {
        currentUser = MonnyFirebaseUser(user);
        return currentUser!;
      },
    );
