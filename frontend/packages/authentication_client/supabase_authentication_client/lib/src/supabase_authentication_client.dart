// ignore_for_file: lines_longer_than_80_chars

import 'package:authentication_client/authentication_client.dart';
import 'package:fpdart/fpdart.dart';

/// Exception thrown when email uniqueness check fails.
class EmailUniqueCheckException extends AuthenticationException {
  ///
  const EmailUniqueCheckException(super.message);
}

/// Exception thrown during sign-up process.
class SignUpException extends AuthenticationException {
  ///
  const SignUpException(super.message);
}

/// Exception thrown during password sign-in process.
class SignInWithPasswordException extends AuthenticationException {
  ///
  const SignInWithPasswordException(super.message);
}

/// Exception thrown when generating OAuth sign-in URL fails.
class OAuthSignInUrlException extends AuthenticationException {
  ///
  const OAuthSignInUrlException(super.message);
}

/// Exception thrown during code exchange for session.
class ExchangeCodeForSessionException extends AuthenticationException {
  ///
  const ExchangeCodeForSessionException(super.message);
}

/// Exception thrown during ID token sign-in process.
class SignInWithIdTokenException extends AuthenticationException {
  ///
  const SignInWithIdTokenException(super.message);
}

/// Exception thrown during OTP sign-in process.
class SignInWithOtpException extends AuthenticationException {
  ///
  const SignInWithOtpException(super.message);
}

/// Exception thrown when OTP verification fails.
class VerifyOTPException extends AuthenticationException {
  ///
  const VerifyOTPException(super.message);
}

/// Exception thrown when session refresh fails.
class RefreshSessionException extends AuthenticationException {
  ///
  const RefreshSessionException(super.message);
}

/// Exception thrown during reauthentication.
class ReauthenticateException extends AuthenticationException {
  ///
  const ReauthenticateException(super.message);
}

/// Exception thrown when resending OTP fails.
class ResendOTPException extends AuthenticationException {
  ///
  const ResendOTPException(super.message);
}

/// Exception thrown when updating user information fails.
class UpdateUserException extends AuthenticationException {
  ///
  const UpdateUserException(super.message);
}

/// Exception thrown during session setting.
class SetSessionException extends AuthenticationException {
  ///
  const SetSessionException(super.message);
}

/// Exception thrown during session retrieval from URL.
class GetSessionFromUrlException extends AuthenticationException {
  ///
  const GetSessionFromUrlException(super.message);
}

/// Exception thrown during sign-out process.
class SignOutException extends AuthenticationException {
  ///
  const SignOutException(super.message);
}

/// Exception thrown during email reset process.
class ResetPasswordForEmailException extends AuthenticationException {
  ///
  const ResetPasswordForEmailException(super.message);
}

/// Exception thrown during session recovery process.
class RecoverSessionException extends AuthenticationException {
  ///
  const RecoverSessionException(super.message);
}

/// Repository for handling authentication-related operations.
///
/// This repository is responsible for encapsulating authentication-related
/// operations using a Supabase client. It provides methods for performing
/// various authentication tasks.
///
/// The repository is initialized with a Supabase client, which is used for
/// communicating with the Supabase authentication service.
///
/// Example:
/// ```dart
/// SupabaseClient supabaseClient = SupabaseClient();
/// AuthenticationRepository authRepository = AuthenticationRepository(supabaseClient);
/// ```
class SupabaseAuthenticationClient implements AuthenticationClient {
  /// Constructs an instance of [SupabaseAuthenticationClient] with the provided Supabase client.
  ///
  /// The [supabaseClient] parameter is the Supabase client used for authentication operations.
  SupabaseAuthenticationClient(
    SupabaseClient supabaseClient,
  ) : _supabaseClient = supabaseClient;

  /// The Supabase client used for authentication operations.
  final SupabaseClient _supabaseClient;

  /// Retrieves the Supabase client used for authentication operations.
  GoTrueClient get _authClient => _supabaseClient.auth;

  /// Retrieves the stream of authentication state changes.
  ///
  /// This getter returns a `Stream` that emits `AuthState` objects whenever there
  /// is a change in the authentication state. The `AuthState` represents the current
  /// authentication state of the user.
  ///
  /// ### Example
  ///
  /// ```dart
  /// Stream<AuthState> authStateStream = onAuthStateChange;
  ///
  /// authStateStream.listen((authState) {
  ///   // Handle the authentication state change
  ///   // ...
  /// });
  /// ```

  @override
  Stream<AuthState> get onAuthStateChange => _authClient.onAuthStateChange;

  /// Retrieves the current user, if available.
  ///
  /// This getter returns an `Option` that represents the current user. The `Option`
  /// can either contain a `User` object if a user is currently authenticated, or
  /// it can be `None` if no user is authenticated.
  ///
  /// ### Example
  ///
  /// ```dart
  /// Option<User?> currentUserOption = currentUser;
  ///
  /// currentUser.fold(
  ///   () {
  ///     print('No user is currently authenticated.');
  ///   },
  ///   (user) {
  ///     print('Current user: ${user.displayName}');
  ///   },
  /// );
  /// ```

  @override
  Option<User> get currentUser => Option.fromNullable(_authClient.currentUser);

  /// Checks if the given email is unique in the database.
  ///
  /// This function checks if the given email is already registered in the database.
  /// It uses the `_supabaseClient` to perform a select query on the 'profiles' table
  /// and checks if any records have a matching email.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous result
  /// of the uniqueness check. The `TaskEither` object can either contain a `Unit` value
  /// if the email is unique, or an error message if the email already exists in the database.
  ///
  /// The function accepts the following parameter:
  /// - `email` (required): The email to check for uniqueness.
  ///
  /// The function internally uses an async lambda function to perform the uniqueness check.
  /// Inside the lambda function, it sends a select query to the 'profiles' table to retrieve
  /// records matching the provided email. If any records are found, it returns a `left` value
  /// with the error message 'Email already exists'. Otherwise, it returns a `right` value
  /// with the `unit` value indicating that the email is unique.
  ///
  /// Example:
  /// ```dart
  /// String email = 'example@example.com';
  ///
  /// TaskEither<String, Unit> isEmailUniqueResult = isEmailUnique(email);
  ///
  /// await isEmailUniqueResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Email uniqueness check failed: $error'),
  ///     (_) => print('Email is unique.'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<EmailUniqueCheckException, Unit> isEmailUnique(String email) {
    return TaskEither<EmailUniqueCheckException, Unit>(
      () async {
        final response = await _supabaseClient
            .from('profiles')
            .select<List<Map<String, dynamic>>>()
            .eq('email', email);

        if (response.isEmpty) {
          return right(unit);
        } else {
          return left(const EmailUniqueCheckException('Email already exists'));
        }
      },
    );
  }

  /// Signs up a user with the provided credentials and additional data.
  ///
  /// This function is responsible for registering a new user with the specified
  /// email, phone number, and password. It uses the `_authClient` object to perform
  /// the signup operation.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the signup operation. The `TaskEither` object can either contain
  /// an `AuthResponse` object if the signup is successful, or an error message if
  /// an error occurs during the signup process.
  ///
  /// The function accepts the following parameters:
  /// - `email` (optional): The email address of the user. If provided, the user
  ///   will be registered with this email address.
  /// - `phone` (optional): The phone number of the user. If provided, the user
  ///   will be registered with this phone number.
  /// - `password` (required): The password for the user.
  /// - `emailRedirectTo` (optional): The URL to redirect the user to after email
  ///   verification. If provided, the user will be redirected to this URL after
  ///   verifying their email.
  /// - `data` (optional): Additional data to associate with the user. This can be
  ///   a map of key-value pairs containing any extra information about the user.
  /// - `captchaToken` (optional): The token obtained from reCAPTCHA to verify that
  ///   the signup request is not generated by a bot.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the signup process, the error
  /// message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the signup operation (`_authClient.signUp` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// String email = 'example@example.com';
  /// String password = 'password123';
  ///
  /// TaskEither<String, AuthResponse> signupResult = signUp(
  ///   email: email,
  ///   password: password,
  /// );
  ///
  /// await signupResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Signup failed: $error'),
  ///     (authResponse) => print('Signup successful. User ID: ${authResponse.userId}'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<SignUpException, AuthResponse> signUp({
    required String password,
    String? email,
    String? phone,
    String? emailRedirectTo,
    Map<String, dynamic>? data,
    String? captchaToken,
  }) {
    return TaskEither<SignUpException, AuthResponse>.tryCatch(
      () => _authClient.signUp(
        email: email,
        phone: phone,
        password: password,
        emailRedirectTo: emailRedirectTo,
        data: data,
        captchaToken: captchaToken,
      ),
      (error, stackTrace) => SignUpException('Error: $error'),
    );
  }

  /// Signs in a user using the provided credentials.
  ///
  /// This function is responsible for authenticating a user with the specified
  /// email, phone number, and password. It uses the `_authClient` object to perform
  /// the sign-in operation.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the sign-in operation. The `TaskEither` object can either contain
  /// an `AuthResponse` object if the sign-in is successful, or an error message if
  /// an error occurs during the sign-in process.
  ///
  /// The function accepts the following parameters:
  /// - `email` (optional): The email address of the user. If provided, the user
  ///   will be authenticated with this email address.
  /// - `phone` (optional): The phone number of the user. If provided, the user
  ///   will be authenticated with this phone number.
  /// - `password` (required): The password for the user.
  /// - `captchaToken` (optional): The token obtained from reCAPTCHA to verify that
  ///   the sign-in request is not generated by a bot.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the sign-in process, the error
  /// message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the sign-in operation (`_authClient.signInWithPassword` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// String email = 'example@example.com';
  /// String password = 'password123';
  ///
  /// TaskEither<String, AuthResponse> signInResult = signInWithPassword(
  ///   email: email,
  ///   password: password,
  /// );
  ///
  /// await signInResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Sign-in failed: $error'),
  ///     (authResponse) => print('Sign-in successful. User ID: ${authResponse.userId}'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<SignInWithPasswordException, AuthResponse> signInWithPassword({
    required String password,
    String? email,
    String? phone,
    String? captchaToken,
  }) {
    return TaskEither<SignInWithPasswordException, AuthResponse>.tryCatch(
      () => _authClient.signInWithPassword(
        email: email,
        password: password,
      ),
      (error, stackTrace) => SignInWithPasswordException('Error: $error'),
    );
  }

  /// Retrieves the OAuth sign-in URL for the specified provider.
  ///
  /// This function is responsible for generating the sign-in URL for the given
  /// OAuth provider, such as Google, Facebook, or Twitter. It uses the `_authClient`
  /// object to retrieve the URL.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of retrieving the sign-in URL. The `TaskEither` object can either
  /// contain an `OAuthResponse` object if the URL retrieval is successful, or an
  /// error message if an error occurs during the process.
  ///
  /// The function accepts the following parameters:
  /// - `provider` (required): The OAuth provider for which to retrieve the sign-in URL.
  /// - `redirectTo` (optional): The URL to redirect the user to after signing in.
  ///   If provided, the user will be redirected to this URL after signing in via OAuth.
  /// - `scopes` (optional): The scopes or permissions required for the OAuth authentication.
  ///   This can be a comma-separated string of scope names.
  /// - `queryParams` (optional): Additional query parameters to include in the sign-in URL.
  ///   This can be a map of key-value pairs.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the URL retrieval process, the
  /// error message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that retrieves the sign-in URL (`_authClient.getOAuthSignInUrl` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// Provider provider = Provider.google;
  ///
  /// TaskEither<String, OAuthResponse> urlResult = getOAuthSignInUrl(
  ///   provider: provider,
  ///   redirectTo: 'https://example.com/redirect',
  ///   scopes: 'profile,email',
  ///   queryParams: {'custom_param': 'value'},
  /// );
  ///
  /// await urlResult.run((either) {
  ///   either.fold(
  ///     (error) => print('URL retrieval failed: $error'),
  ///     (oauthResponse) => print('OAuth sign-in URL: ${oauthResponse.url}'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<GetSessionFromUrlException, OAuthResponse> getOAuthSignInUrl({
    required Provider provider,
    String? redirectTo,
    String? scopes,
    Map<String, String>? queryParams,
  }) {
    return TaskEither<GetSessionFromUrlException, OAuthResponse>.tryCatch(
      () => _authClient.getOAuthSignInUrl(
        provider: provider,
        redirectTo: redirectTo,
        scopes: scopes,
        queryParams: queryParams,
      ),
      (error, stackTrace) => GetSessionFromUrlException('Error: $error'),
    );
  }

  /// Exchanges the authentication code for a user session.
  ///
  /// This function is responsible for exchanging the authentication code obtained
  /// from the OAuth provider for a user session. It uses the `_authClient` object
  /// to perform the code exchange.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of exchanging the code for a session. The `TaskEither` object can either
  /// contain an `AuthResponse` object if the exchange is successful, or an error
  /// message if an error occurs during the process.
  ///
  /// The function accepts the following parameter:
  /// - `authCode` (required): The authentication code obtained from the OAuth provider.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the code exchange process, the
  /// error message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the code exchange (`_authClient.exchangeCodeForSession` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// String code = 'xyz123';
  ///
  /// TaskEither<String, AuthResponse> exchangeResult = exchangeCodeForSession(code);
  ///
  /// await exchangeResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Code exchange failed: $error'),
  ///     (authResponse) => print('Code exchanged successfully. User ID: ${authResponse.userId}'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<ExchangeCodeForSessionException, AuthResponse>
      exchangeCodeForSession(String authCode) {
    return TaskEither<ExchangeCodeForSessionException, AuthResponse>.tryCatch(
      () => _authClient.exchangeCodeForSession(authCode),
      (error, stackTrace) => ExchangeCodeForSessionException('Error: $error'),
    );
  }

  /// Signs in a user using the provided ID token.
  ///
  /// This function is responsible for authenticating a user with the specified
  /// provider and ID token. It uses the `_authClient` object to perform the sign-in
  /// operation.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the sign-in operation. The `TaskEither` object can either contain
  /// an `AuthResponse` object if the sign-in is successful, or an error message if
  /// an error occurs during the sign-in process.
  ///
  /// The function accepts the following parameters:
  /// - `provider` (required): The provider for which the ID token is being used.
  /// - `idToken` (required): The ID token obtained from the provider for the user.
  /// - `accessToken` (optional): The access token obtained from the provider for the user.
  /// - `nonce` (optional): A nonce value used for security purposes during the sign-in process.
  /// - `captchaToken` (optional): The token obtained from reCAPTCHA to verify that
  ///   the sign-in request is not generated by a bot.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the sign-in process, the error
  /// message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the sign-in operation (`_authClient.signInWithIdToken` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// Provider provider = Provider.google;
  /// String idToken = 'abcxyz123';
  ///
  /// TaskEither<String, AuthResponse> signInResult = signInWithIdToken(
  ///   provider: provider,
  ///   idToken: idToken,
  ///   accessToken: 'xyz123',
  ///   nonce: '123nonce',
  ///   captchaToken: 'captcha123',
  /// );
  ///
  /// await signInResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Sign-in failed: $error'),
  ///     (authResponse) => print('Sign-in successful. User ID: ${authResponse.userId}'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<SignInWithIdTokenException, AuthResponse> signInWithIdToken({
    required Provider provider,
    required String idToken,
    String? accessToken,
    String? nonce,
    String? captchaToken,
  }) {
    return TaskEither<SignInWithIdTokenException, AuthResponse>.tryCatch(
      () => _authClient.signInWithIdToken(
        provider: provider,
        idToken: idToken,
        accessToken: accessToken,
        nonce: nonce,
        captchaToken: captchaToken,
      ),
      (error, stackTrace) => SignInWithIdTokenException('Error: $error'),
    );
  }

  /// Signs in a user using the provided one-time password (OTP).
  ///
  /// This function is responsible for authenticating a user with the specified
  /// email or phone number and OTP. It uses the `_authClient` object to perform
  /// the sign-in operation.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the sign-in operation. The `TaskEither` object can either contain
  /// a `void` value if the sign-in is successful, or an error message if an error
  /// occurs during the sign-in process.
  ///
  /// The function accepts the following parameters:
  /// - `email` (optional): The email address of the user. If provided, the user
  ///   will be authenticated with this email address.
  /// - `phone` (optional): The phone number of the user. If provided, the user
  ///   will be authenticated with this phone number.
  /// - `emailRedirectTo` (optional): The URL to redirect the user to after the
  ///   email is verified. This is applicable only if `shouldCreateUser` is `true`
  ///   and the user's email requires verification.
  /// - `shouldCreateUser` (optional): Indicates whether to create a new user if
  ///   the user doesn't exist. Defaults to `null` (which falls back to the server's
  ///   default behavior).
  /// - `data` (optional): Additional user data to include in the sign-in request.
  ///   This can be a map of key-value pairs.
  /// - `captchaToken` (optional): The token obtained from reCAPTCHA to verify that
  ///   the sign-in request is not generated by a bot.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the sign-in process, the error
  /// message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the sign-in operation (`_authClient.signInWithOtp` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// String email = 'example@example.com';
  /// String otp = '123456';
  ///
  /// TaskEither<String, void> signInResult = signInWithOtp(
  ///   email: email,
  ///   token: otp,
  /// );
  ///
  /// await signInResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Sign-in failed: $error'),
  ///     (_) => print('Sign-in successful.'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<SignInWithOtpException, Unit> signInWithOtp({
    String? email,
    String? phone,
    String? emailRedirectTo,
    bool? shouldCreateUser,
    Map<String, dynamic>? data,
    String? captchaToken,
  }) {
    return TaskEither<SignInWithOtpException, Unit>.tryCatch(
      () => _authClient
          .signInWithOtp(
            email: email,
            phone: phone,
            emailRedirectTo: emailRedirectTo,
            shouldCreateUser: shouldCreateUser,
            data: data,
            captchaToken: captchaToken,
          )
          .then((value) => unit),
      (error, stackTrace) => SignInWithOtpException('Error: $error'),
    );
  }

  /// Verifies the provided one-time password (OTP) for email or phone authentication.
  ///
  /// This function is responsible for verifying the OTP for email or phone
  /// authentication. It uses the `_authClient` object to perform the verification.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the OTP verification. The `TaskEither` object can either contain
  /// an `AuthResponse` object if the OTP is successfully verified, or an error
  /// message if an error occurs during the verification process.
  ///
  /// The function accepts the following parameters:
  /// - `email` (optional): The email address of the user. If provided, the OTP
  ///   will be verified for this email address.
  /// - `phone` (optional): The phone number of the user. If provided, the OTP
  ///   will be verified for this phone number.
  /// - `token` (required): The OTP to verify.
  /// - `type` (required): The type of OTP verification, either `OtpType.email` or
  ///   `OtpType.phone`.
  /// - `redirectTo` (optional): The URL to redirect the user to after the
  ///   verification is completed.
  /// - `captchaToken` (optional): The token obtained from reCAPTCHA to verify that
  ///   the verification request is not generated by a bot.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the OTP verification process, the
  /// error message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the OTP verification (`_authClient.verifyOTP` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// String email = 'example@example.com';
  /// String otp = '123456';
  ///
  /// TaskEither<String, AuthResponse> verificationResult = verifyOTP(
  ///   email: email,
  ///   token: otp,
  ///   type: OtpType.email,
  /// );
  ///
  /// await verificationResult.run((either) {
  ///   either.fold(
  ///     (error) => print('OTP verification failed: $error'),
  ///     (authResponse) => print('OTP verification successful. User ID: ${authResponse.userId}'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<VerifyOTPException, AuthResponse> verifyOTP({
    required String token,
    required OtpType type,
    String? email,
    String? phone,
    String? redirectTo,
    String? captchaToken,
  }) {
    return TaskEither<VerifyOTPException, AuthResponse>.tryCatch(
      () => _authClient.verifyOTP(
        email: email,
        phone: phone,
        token: token,
        type: type,
        redirectTo: redirectTo,
        captchaToken: captchaToken,
      ),
      (error, stackTrace) => VerifyOTPException('Error: $error'),
    );
  }

  /// Refreshes the current user session.
  ///
  /// This function is responsible for refreshing the current user session. It uses
  /// the `_authClient` object to perform the session refresh.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the session refresh. The `TaskEither` object can either contain
  /// an `AuthResponse` object if the session refresh is successful, or an error
  /// message if an error occurs during the process.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the session refresh process, the
  /// error message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the session refresh (`_authClient.refreshSession` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// TaskEither<String, AuthResponse> refreshResult = refreshSession();
  ///
  /// await refreshResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Session refresh failed: $error'),
  ///     (authResponse) => print('Session refresh successful. User ID: ${authResponse.userId}'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<RefreshSessionException, AuthResponse> refreshSession() {
    return TaskEither<RefreshSessionException, AuthResponse>.tryCatch(
      () => _authClient.refreshSession(),
      (error, stackTrace) => RefreshSessionException('Error: $error'),
    );
  }

  /// Reauthenticates the current user.
  ///
  /// This function is responsible for reauthenticating the current user. It uses
  /// the `_authClient` object to perform the reauthentication.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the reauthentication. The `TaskEither` object can either contain
  /// a `void` value if the reauthentication is successful, or an error message if
  /// an error occurs during the process.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the reauthentication process, the
  /// error message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the reauthentication (`_authClient.reauthenticate` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// TaskEither<String, void> reauthResult = reauthenticate();
  ///
  /// await reauthResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Reauthentication failed: $error'),
  ///     (_) => print('Reauthentication successful.'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<ReauthenticateException, Unit> reauthenticate() {
    return TaskEither<ReauthenticateException, Unit>.tryCatch(
      () => _authClient.reauthenticate().then((value) => unit),
      (error, stackTrace) => ReauthenticateException('Error: $error'),
    );
  }

  /// Resends the one-time password (OTP) for email or phone authentication.
  ///
  /// This function is responsible for resending the OTP for email or phone
  /// authentication. It uses the `_authClient` object to perform the resend operation.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the resend operation. The `TaskEither` object can either contain
  /// a `ResendResponse` object if the OTP is successfully resent, or an error message
  /// if an error occurs during the resend process.
  ///
  /// The function accepts the following parameters:
  /// - `email` (optional): The email address of the user. If provided, the OTP
  ///   will be resent to this email address.
  /// - `phone` (optional): The phone number of the user. If provided, the OTP
  ///   will be resent to this phone number.
  /// - `type` (required): The type of OTP resend, either `OtpType.email` or `OtpType.phone`.
  /// - `emailRedirectTo` (optional): The URL to redirect the user to after the
  ///   OTP is resent. This is applicable only if the OTP is being resent to an email address.
  /// - `captchaToken` (optional): The token obtained from reCAPTCHA to verify that
  ///   the resend request is not generated by a bot.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the OTP resend process, the error
  /// message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the OTP resend (`_authClient.resend` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// String email = 'example@example.com';
  ///
  /// TaskEither<String, ResendResponse> resendResult = resend(
  ///   email: email,
  ///   type: OtpType.email,
  ///   emailRedirectTo: 'https://example.com/redirect',
  /// );
  ///
  /// await resendResult.run((either) {
  ///   either.fold(
  ///     (error) => print('OTP resend failed: $error'),
  ///     (resendResponse) => print('OTP resent successfully. Request ID: ${resendResponse.requestId}'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<ResendOTPException, ResendResponse> resend({
    required OtpType type,
    String? email,
    String? phone,
    String? emailRedirectTo,
    String? captchaToken,
  }) {
    return TaskEither<ResendOTPException, ResendResponse>.tryCatch(
      () => _authClient.resend(
        email: email,
        phone: phone,
        type: type,
        emailRedirectTo: emailRedirectTo,
        captchaToken: captchaToken,
      ),
      (error, stackTrace) => ResendOTPException('Error: $error'),
    );
  }

  /// Updates the current user's attributes.
  ///
  /// This function is responsible for updating the current user's attributes. It
  /// uses the `_authClient` object to perform the update operation.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the update operation. The `TaskEither` object can either contain
  /// a `UserResponse` object if the attributes are successfully updated, or an error
  /// message if an error occurs during the update process.
  ///
  /// The function accepts the following parameters:
  /// - `attributes` (required): The new attributes for the user.
  /// - `emailRedirectTo` (optional): The URL to redirect the user to after the
  ///   attributes are updated.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the update process, the error
  /// message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the update operation (`_authClient.updateUser` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// UserAttributes newAttributes = UserAttributes(
  ///   displayName: 'John Doe',
  ///   avatarUrl: 'https://example.com/avatar.jpg',
  /// );
  ///
  /// TaskEither<String, UserResponse> updateResult = updateUser(newAttributes);
  ///
  /// await updateResult.run((either) {
  ///   either.fold(
  ///     (error) => print('User attribute update failed: $error'),
  ///     (userResponse) => print('User attribute update successful. User ID: ${userResponse.userId}'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<UpdateUserException, UserResponse> updateUser({
    String? email,
    String? phone,
    String? password,
    Map<String, dynamic>? data,
    String? emailRedirectTo,
  }) {
    return TaskEither<UpdateUserException, UserResponse>.tryCatch(
      () => _authClient.updateUser(
        UserAttributes(
          email: email,
          phone: phone,
          password: password,
          data: data,
        ),
        emailRedirectTo: emailRedirectTo,
      ),
      (error, stackTrace) => UpdateUserException('Error: $error'),
    );
  }

  /// Sets the current user session using the provided refresh token.
  ///
  /// This function is responsible for setting the current user session using the
  /// provided refresh token. It uses the `_authClient` object to perform the session
  /// setting operation.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the session setting operation. The `TaskEither` object can either
  /// contain an `AuthResponse` object if the session is successfully set, or an
  /// error message if an error occurs during the process.
  ///
  /// The function accepts the following parameter:
  /// - `refreshToken` (required): The refresh token to set the user session.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the session setting process, the
  /// error message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the session setting (`_authClient.setSession` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// String refreshToken = 'abc123';
  ///
  /// TaskEither<String, AuthResponse> setSessionResult = setSession(refreshToken);
  ///
  /// await setSessionResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Session setting failed: $error'),
  ///     (authResponse) => print('Session set successfully. User ID: ${authResponse.userId}'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<SetSessionException, AuthResponse> setSession(
    String refreshToken,
  ) {
    return TaskEither<SetSessionException, AuthResponse>.tryCatch(
      () => _authClient.setSession(refreshToken),
      (error, stackTrace) => SetSessionException('Error: $error'),
    );
  }

  /// Retrieves the user session from the provided origin URL.
  ///
  /// This function is responsible for retrieving the user session from the provided
  /// origin URL. It uses the `_authClient` object to perform the session retrieval.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the session retrieval. The `TaskEither` object can either contain
  /// an `AuthSessionUrlResponse` object if the session is successfully retrieved,
  /// or an error message if an error occurs during the process.
  ///
  /// The function accepts the following parameters:
  /// - `originUrl` (required): The origin URL from which to retrieve the user session.
  /// - `storeSession` (optional): Indicates whether to store the retrieved session
  ///   locally. Defaults to `true`.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the session retrieval process, the
  /// error message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the session retrieval (`_authClient.getSessionFromUrl` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// Uri originUrl = Uri.parse('https://example.com');
  ///
  /// TaskEither<String, AuthSessionUrlResponse> getSessionResult = getSessionFromUrl(originUrl);
  ///
  /// await getSessionResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Session retrieval failed: $error'),
  ///     (sessionUrlResponse) => print('Session retrieved successfully. Session URL: ${sessionUrlResponse.sessionUrl}'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<AuthenticationException, AuthSessionUrlResponse> getSessionFromUrl(
    Uri originUrl, {
    bool storeSession = true,
  }) {
    return TaskEither.tryCatch(
      () => _authClient.getSessionFromUrl(
        originUrl,
        storeSession: storeSession,
      ),
      (error, stackTrace) => AuthenticationException('Error: $error'),
    );
  }

  /// Signs out the current user.
  ///
  /// This function is responsible for signing out the current user. It uses the
  /// `_authClient` object to perform the sign-out operation.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the sign-out operation. The `TaskEither` object can either contain
  /// a `void` value if the sign-out is successful, or an error message if an error
  /// occurs during the process.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the sign-out process, the error
  /// message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the sign-out operation (`_authClient.signOut` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// TaskEither<String, void> signOutResult = signOut();
  ///
  /// await signOutResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Sign-out failed: $error'),
  ///     (_) => print('Sign-out successful.'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<SignOutException, Unit> signOut() {
    return TaskEither<SignOutException, Unit>.tryCatch(
      () => _authClient.signOut().then((value) => unit),
      (error, stackTrace) => SignOutException('Error: $error'),
    );
  }

  /// Sends a password reset email for the specified email address.
  ///
  /// This function is responsible for sending a password reset email for the specified
  /// email address. It uses the `_authClient` object to perform the password reset
  /// operation.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the password reset operation. The `TaskEither` object can either contain
  /// a `void` value if the password reset email is successfully sent, or an error
  /// message if an error occurs during the process.
  ///
  /// The function accepts the following parameters:
  /// - `email` (required): The email address for which to send the password reset email.
  /// - `redirectTo` (optional): The URL to redirect the user to after the password reset
  ///   email is sent.
  /// - `captchaToken` (optional): The token obtained from reCAPTCHA to verify that the
  ///   password reset request is not generated by a bot.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the password reset process, the error
  /// message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the password reset operation (`_authClient.resetPasswordForEmail` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// String email = 'example@example.com';
  ///
  /// TaskEither<String, void> resetResult = resetPasswordForEmail(email);
  ///
  /// await resetResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Password reset failed: $error'),
  ///     (_) => print('Password reset email sent successfully.'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<ResetPasswordForEmailException, Unit> resetPasswordForEmail(
    String email, {
    String? redirectTo,
    String? captchaToken,
  }) {
    return TaskEither<ResetPasswordForEmailException, Unit>.tryCatch(
      () => _authClient
          .resetPasswordForEmail(
            email,
            redirectTo: redirectTo,
            captchaToken: captchaToken,
          )
          .then((value) => unit),
      (error, stackTrace) => ResetPasswordForEmailException('Error: $error'),
    );
  }

  /// Recovers the user session using the provided JSON string.
  ///
  /// This function is responsible for recovering the user session using the provided
  /// JSON string. It uses the `_authClient` object to perform the session recovery.
  ///
  /// The function returns a `TaskEither` object that represents the asynchronous
  /// result of the session recovery. The `TaskEither` object can either contain
  /// an `AuthResponse` object if the session is successfully recovered, or an error
  /// message if an error occurs during the process.
  ///
  /// The function accepts the following parameter:
  /// - `jsonStr` (required): The JSON string representing the user session.
  ///
  /// The function internally uses the `TaskEither.tryCatch` function to handle
  /// potential errors. If an error occurs during the session recovery process, the
  /// error message will be captured and returned as a string in the `TaskEither` object.
  /// The `tryCatch` function takes two arguments:
  /// - A function that performs the session recovery (`_authClient.recoverSession` in this case).
  /// - An error handler function that receives the error and stack trace in case of failure.
  ///
  /// ### Example
  ///
  /// ```dart
  /// String jsonStr = '{"userId": "abc123", "accessToken": "def456"}';
  ///
  /// TaskEither<String, AuthResponse> recoverResult = recoverSession(jsonStr);
  ///
  /// await recoverResult.run((either) {
  ///   either.fold(
  ///     (error) => print('Session recovery failed: $error'),
  ///     (authResponse) => print('Session recovered successfully. User ID: ${authResponse.userId}'),
  ///   );
  /// });
  /// ```

  @override
  TaskEither<RecoverSessionException, AuthResponse> recoverSession(
    String jsonStr,
  ) {
    return TaskEither<RecoverSessionException, AuthResponse>.tryCatch(
      () => _authClient.recoverSession(jsonStr),
      (error, stackTrace) => RecoverSessionException('Error: $error'),
    );
  }
}
