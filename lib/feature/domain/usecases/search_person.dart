import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rickandmorty/core/error/failure.dart';
import 'package:rickandmorty/core/usecases/usecases.dart';
import 'package:rickandmorty/feature/domain/entities/person_entity.dart';
import 'package:rickandmorty/feature/domain/repositories/person_repository.dart';

class SearchPerson extends UseCase<List<PersonEntity>, SearchPersonParams> {
  final PersonRepository personRepository;

  SearchPerson(this.personRepository);
  Future<Either<Failure, List<PersonEntity>>> call(
      SearchPersonParams params) async {
    return await personRepository.searchPerson(params.query);
  }
}

class SearchPersonParams extends Equatable {
  final String query;

  SearchPersonParams({@required this.query});
  @override
  // TODO: implement props
  List<Object> get props => [query];
}
