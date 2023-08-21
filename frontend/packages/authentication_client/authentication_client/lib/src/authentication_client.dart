// ignore_for_file: lines_longer_than_80_chars

import 'package:fpdart/fpdart.dart';
import 'package:supabase/supabase.dart';

/// Base exception class for authentication-related errors.
class AuthenticationException implements Exception {
  /// Creates a new [AuthenticationException] with the provided [message].
  const AuthenticationException(this.message);

  /// The error message.
  final String message;

  @override
  String toString() => 'AuthenticationException: $message';
}

/// An interface for interacting with the authentication system.
abstract class AuthenticationClient {
  /// Stream emitting changes in the authentication state.
  Stream<AuthState> get onAuthStateChange;

  /// The current authenticated user, if available.
  Option<User> get currentUser;

  /// Checks if the provided email is unique.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [Unit] on success.
  TaskEither<AuthenticationException, Unit> isEmailUnique(String email);

  /// Signs up a new user.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [AuthResponse] on success.
  TaskEither<AuthenticationException, AuthResponse> signUp({
    required String password,
    String? email,
    String? phone,
    String? emailRedirectTo,
    Map<String, dynamic>? data,
    String? captchaToken,
  });

  /// Signs in a user using their password.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [AuthResponse] on success.
  TaskEither<AuthenticationException, AuthResponse> signInWithPassword({
    required String password,
    String? email,
    String? phone,
    String? captchaToken,
  });

  /// Gets the OAuth sign-in URL for the specified provider.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [OAuthResponse] on success.
  TaskEither<AuthenticationException, OAuthResponse> getOAuthSignInUrl({
    required Provider provider,
    String? redirectTo,
    String? scopes,
    Map<String, String>? queryParams,
  });

  /// Exchanges an authorization code for a session.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [AuthResponse] on success.
  TaskEither<AuthenticationException, AuthResponse> exchangeCodeForSession(
    String authCode,
  );

  /// Signs in a user using an ID token.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [AuthResponse] on success.
  TaskEither<AuthenticationException, AuthResponse> signInWithIdToken({
    required Provider provider,
    required String idToken,
    String? accessToken,
    String? nonce,
    String? captchaToken,
  });

  /// Signs in a user using one-time password (OTP).
  ///
  /// [email] or [phone] must be provided for identification.
  /// [emailRedirectTo] specifies the email address to redirect to (if applicable).
  /// [shouldCreateUser] determines whether to create a new user if not found.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [Unit] on success.
  TaskEither<AuthenticationException, Unit> signInWithOtp({
    String? email,
    String? phone,
    String? emailRedirectTo,
    bool? shouldCreateUser,
    Map<String, dynamic>? data,
    String? captchaToken,
  });

  /// Verifies the provided OTP (one-time password) token.
  ///
  /// [token] is the OTP token to verify.
  /// [type] specifies the type of OTP.
  ///
  /// [email] or [phone] must be provided for identification.
  /// [redirectTo] specifies the redirect URL after verification.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [AuthResponse] on success.
  TaskEither<AuthenticationException, AuthResponse> verifyOTP({
    required String token,
    required OtpType type,
    String? email,
    String? phone,
    String? redirectTo,
    String? captchaToken,
  });

  /// Refreshes the current session.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [AuthResponse] on success.
  TaskEither<AuthenticationException, AuthResponse> refreshSession();

  /// Re-authenticates the user.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [Unit] on success.
  TaskEither<AuthenticationException, Unit> reauthenticate();

  /// Resends an OTP (one-time password) for verification.
  ///
  /// [type] specifies the type of OTP.
  ///
  /// [email] or [phone] must be provided for identification.
  /// [emailRedirectTo] specifies the email address to redirect to (if applicable).
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [ResendResponse] on success.
  TaskEither<AuthenticationException, ResendResponse> resend({
    required OtpType type,
    String? email,
    String? phone,
    String? emailRedirectTo,
    String? captchaToken,
  });

  /// Updates user information.
  ///
  /// [email], [phone], or [password] can be updated.
  /// [data] can include additional user data.
  /// [emailRedirectTo] specifies the email address to redirect to (if applicable).
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [UserResponse] on success.
  TaskEither<AuthenticationException, UserResponse> updateUser({
    String? email,
    String? phone,
    String? password,
    Map<String, dynamic>? data,
    String? emailRedirectTo,
  });

  /// Sets the session using a refresh token.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [AuthResponse] on success.
  TaskEither<AuthenticationException, AuthResponse> setSession(
    String refreshToken,
  );

  /// Retrieves a session from a URL and optionally stores it.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [AuthSessionUrlResponse] on success.
  TaskEither<AuthenticationException, AuthSessionUrlResponse> getSessionFromUrl(
    Uri originUrl, {
    bool storeSession = true,
  });

  /// Signs the user out.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [Unit] on success.
  TaskEither<AuthenticationException, Unit> signOut();

  /// Resets the password for the provided email.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [Unit] on success.
  TaskEither<AuthenticationException, Unit> resetPasswordForEmail(
    String email, {
    String? redirectTo,
    String? captchaToken,
  });

  /// Recovers a session using a JSON string.
  ///
  /// Returns a [TaskEither] containing [AuthenticationException] on failure,
  /// or [AuthResponse] on success.
  TaskEither<AuthenticationException, AuthResponse> recoverSession(
    String jsonStr,
  );
}
