import 'package:flutter/material.dart';
import 'package:flutter_exercies/core/bloc/bloc.dart';
import 'package:flutter_exercies/core/bloc/bloc_provider.dart';
import 'package:flutter_exercies/core/bloc/reactive_bloc.dart';
import 'package:flutter_exercies/core/bloc/reactive_variebles.dart';
import 'package:provider/provider.dart';

extension DiHelpers on BuildContext {
  T? getRequireBlocService<T extends Bloc>() {
    return BlocProvider.of<T>(this);
  }

  T getRequireProviderService<T>() {
    return Provider.of<T>(this);
  }

  ReactiveSubject<T>? getRequireReactiveValue<T>() {
    return (BlocProvider.of<ReactiveVariebles>(this)?.getSubject<T>()
        as ReactiveSubject<T>?);
  }
}
