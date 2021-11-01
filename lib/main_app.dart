import 'package:flutter/material.dart';

import 'app.dart';
import 'core/flavor/flavors.dart';

Future<void> mainApp(Flavor flavor) async {
  F.appFlavor = flavor;
  //compilar os icones material de maneira correta?
  WidgetsFlutterBinding.ensureInitialized();
  // configurações do device, cor de tema
  runApp(App());
}