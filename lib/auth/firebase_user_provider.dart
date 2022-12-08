import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PacAtividadeComplementarFirebaseUser {
  PacAtividadeComplementarFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PacAtividadeComplementarFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PacAtividadeComplementarFirebaseUser>
    pacAtividadeComplementarFirebaseUserStream() => FirebaseAuth.instance
            .authStateChanges()
            .debounce((user) => user == null && !loggedIn
                ? TimerStream(true, const Duration(seconds: 1))
                : Stream.value(user))
            .map<PacAtividadeComplementarFirebaseUser>(
          (user) {
            currentUser = PacAtividadeComplementarFirebaseUser(user);
            return currentUser!;
          },
        );
