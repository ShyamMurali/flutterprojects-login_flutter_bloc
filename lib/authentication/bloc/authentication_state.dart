// AuthenticationState instances will be the output of the 
//AuthenticationBloc and will be consumed by the presentation layer.

// AuthenticationState.unknown(): the default state which indicates that the bloc does not yet know whether the current user is authenticated or not.

// AuthenticationState.authenticated(): the state which indicates that the user is current authenticated.

// AuthenticationState.unauthenticated(): the state which indicates that the user is current not authenticated.

part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user = User.empty,
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(User user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  final AuthenticationStatus status;
  final User user;

  @override
  List<Object> get props => [status, user];
}

