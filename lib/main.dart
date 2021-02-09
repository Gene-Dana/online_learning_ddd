import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'features/user/presentation/pages/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
