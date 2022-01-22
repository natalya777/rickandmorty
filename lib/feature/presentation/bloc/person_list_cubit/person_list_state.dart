import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rickandmorty/feature/domain/entities/person_entity.dart';

abstract class PersonState extends Equatable {
  const PersonState();
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class PersonEmpty extends PersonState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class PersonLoading extends PersonState {
  final List<PersonEntity> oldPersonsList;
  final bool isFirstFetch;

  PersonLoading(this.oldPersonsList, {this.isFirstFetch = false});
  @override
  // TODO: implement props
  List<Object> get props => [oldPersonsList];
}

class PersonLoaded extends PersonState {
  final List<PersonEntity> personsList;

  PersonLoaded(this.personsList);
  @override
  // TODO: implement props
  List<Object> get props => [personsList];
}

class PersonError extends PersonState {
  final String message;

  PersonError({@required this.message});
  @override
  // TODO: implement props
  List<Object> get props => [message];
}
