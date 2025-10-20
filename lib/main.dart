// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
import 'package:flutter/material.dart';
import 'core/di/common_features.dart';
import 'core/theme/app_page.dart';
import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CommonFeatures.init();
  runApp(
    AppPage(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E Book',
      theme: AppTheme.lightTheme,
    );
  }
}
