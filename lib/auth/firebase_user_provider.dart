import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BudgetingAppFirebaseUser {
  BudgetingAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BudgetingAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BudgetingAppFirebaseUser> budgetingAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BudgetingAppFirebaseUser>(
      (user) {
        currentUser = BudgetingAppFirebaseUser(user);
        return currentUser!;
      },
    );
