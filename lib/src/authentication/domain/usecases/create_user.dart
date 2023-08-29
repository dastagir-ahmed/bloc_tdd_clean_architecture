import 'package:bloc_tdd/core/usecase/usecase.dart';
import 'package:bloc_tdd/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/utils/typedef.dart';

class CreateUser extends UsecaseWithParams<void, CreateUserParams> {
  const CreateUser(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultFuture call(CreateUserParams params) async => _repository.createUser(
      name: params.name, avatar: params.avatar, createdAt: params.createdAt);
}

class CreateUserParams extends Equatable {
  final String name;
  final String avatar;
  final String createdAt;

  const CreateUserParams(
      {required this.name, required this.avatar, required this.createdAt});

  @override
  // TODO: implement props
  List<Object?> get props => [name, avatar, createdAt];
}
