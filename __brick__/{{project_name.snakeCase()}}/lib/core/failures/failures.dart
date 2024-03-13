import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class AppFailure extends Failure {
  final String message;

  AppFailure(this.message);

  @override
  List<Object?> get props => [message];
}
