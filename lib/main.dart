import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'src/app.dart';
import 'src/app_module.dart';

void main(){
  setUrlStrategy(PathUrlStrategy());
  return runApp(ModularApp(module:AppModule(), child: const App(),));
}