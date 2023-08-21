import 'package:authentication_client/authentication_client.dart';
import 'package:fpdart/fpdart.dart';

class UserRepository {
  UserRepository(AuthenticationClient authenticationClient)
      : _authenticationClient = authenticationClient;

  final AuthenticationClient _authenticationClient;

  /// Stream emitting changes in the authentication state.
  Stream<AuthState> get onAuthStateChanges {
    return _authenticationClient.onAuthStateChange;
  }

  /// The current authenticated user, if available.
  Option<User> get currentUser {
    return _authenticationClient.currentUser;
  }

  /// Checks if the provided email is unique.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [Unit] on success.
  TaskEither<AuthenticationException, Unit> isEmailUnique(String email) {
    return _authenticationClient.isEmailUnique(email);
  }

  /// Signs up a new user.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [AuthResponse] on success.
  TaskEither<AuthenticationException, AuthResponse> signUp({
    required String password,
    required String email,
    Map<String, dynamic>? data,
  }) {
    return _authenticationClient.signUp(
      password: password,
      email: email,
      data: data,
    );
  }

  /// Signs in a user using their password.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [AuthResponse] on success.
  TaskEither<AuthenticationException, AuthResponse> signInWithPassword({
    required String password,
    required String email,
  }) {
    return _authenticationClient.signInWithPassword(
      password: password,
      email: email,
    );
  }

  /// Updates user information.
  ///
  /// [email], [phone], or [password] can be updated.
  /// [data] can include additional user data.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [UserResponse] on success.
  TaskEither<AuthenticationException, UserResponse> updateUser({
    String? email,
    String? phone,
    String? password,
    Map<String, dynamic>? data,
  }) {
    return _authenticationClient.updateUser(
      email: email,
      phone: phone,
      password: password,
      data: data,
    );
  }

  /// Signs the user out.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [Unit] on success.
  TaskEither<AuthenticationException, Unit> signOut() {
    return _authenticationClient.signOut();
  }
}
