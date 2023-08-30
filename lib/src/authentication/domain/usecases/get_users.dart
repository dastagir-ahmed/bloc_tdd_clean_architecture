import 'package:bloc_tdd/core/usecase/usecase.dart';
import 'package:bloc_tdd/core/utils/typedef.dart';
import 'package:bloc_tdd/src/authentication/domain/repositories/authentication_repository.dart';

import '../entities/user.dart';

class GetUsers extends UsecaseWithoutParams<List<User>>{
  const GetUsers(this._repository);
  final AuthenticationRepository _repository;
  @override
  ResultFuture<List<User>> call() async => _repository.getUser();
}