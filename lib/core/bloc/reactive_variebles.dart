import 'package:flutter_exercies/core/bloc/bloc.dart';
import 'package:flutter_exercies/core/bloc/reactive_bloc.dart';
import 'package:flutter_exercies/core/domain/context/context.dart';
import 'package:flutter_exercies/core/domain/entities/user.dart';
import 'package:flutter_exercies/modules/app/User/bloc/user_variable.dart';
import 'package:sqflite/sqflite.dart';

class ReactiveVariebles implements Bloc {
  static final _instance = ReactiveVariebles._internal();
  factory ReactiveVariebles() {
    return _instance;
  }
  ReactiveVariebles._internal();

  final Map<Type, ReactiveSubject> reactives = {
    Database: DatabaseContext(),
    User: UserVariable()
  };

  ReactiveSubject? getSubject<T>() {
    if (reactives.containsKey(T)) {
      return reactives[T];
    }
    return null;
  }

  @override
  void dispose() {
    reactives.values.forEach((element) {
      element.dispose();
    });
  }
}
