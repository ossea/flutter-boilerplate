import 'package:flutter/material.dart';

import 'Config/app_config.dart';
import 'app_starter.dart';
import 'core/bloc/bloc_provider.dart';

void main() {
  runApp(
    BlocProvider(
      bloc: AppConfig(true, hasDatabase: false),
      child: AppStarter(),
    ),
  );
}
