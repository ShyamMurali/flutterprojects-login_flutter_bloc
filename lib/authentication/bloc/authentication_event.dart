//AuthenticationEvent instances will be the input to the
// AuthenticationBloc and will be processed and used to emit new AuthenticationState instances.

// AuthenticationStatusChanged: notifies the bloc of a change to the user's AuthenticationStatus
// AuthenticationLogoutRequested: notifies the bloc of a logout request



part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationStatusChanged extends AuthenticationEvent {
  const AuthenticationStatusChanged(this.status);

  final AuthenticationStatus status;

  @override
  List<Object> get props => [status];
}

class AuthenticationLogoutRequested extends AuthenticationEvent {}

