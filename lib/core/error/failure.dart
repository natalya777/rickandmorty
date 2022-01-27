import 'package:equatable/equatable.dart';
//import 'package:rickandmorty/feature/data/datasources/person_remote_data_source.dart';
//import 'package:rickandmorty/feature/data/models/person_model.dart';

abstract class Failure extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
