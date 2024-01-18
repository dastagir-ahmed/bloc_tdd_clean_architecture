//what does this class depend on?
//How can we create a fake version of the dependency
//How do we controll what are denendecies
import 'package:bloc_tdd/core/errors/failure.dart';
import 'package:bloc_tdd/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:bloc_tdd/src/authentication/domain/usecases/create_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepo extends Mock implements AuthenticationRepository {}

void main() {
  late CreateUser usecase;
  late AuthenticationRepository repository;
  setUpAll(() {
    repository = MockAuthRepo();
    usecase = CreateUser(repository);
  });
  const params = CreateUserParams.empty();
  test('should call the [AuthRepo.createUser]', () async {
    //arrange
    //STUB
    when(() =>
        repository.createUser(name: any(named:'name' ), avatar: any(named:'avatar'), createdAt: any(named:'createdAt')))
        .thenAnswer((_) async => const Right(null));
    //act
    final result = await usecase(params);
    //assert
    expect(result, equals(const Right<Failure, void>(null)));
  });
}
