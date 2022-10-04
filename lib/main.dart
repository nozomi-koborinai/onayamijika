import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_account_repository.dart';
import 'package:onayamijika/domain/interfaces/i_onayami_card_repository.dart';
import 'package:onayamijika/domain/interfaces/i_solution_seal_repository.dart';
import 'package:onayamijika/infrastructure/repositories/account_repository.dart';
import 'package:onayamijika/infrastructure/repositories/onayami_card_repository.dart';
import 'package:onayamijika/infrastructure/repositories/solution_seal_repository.dart';
import 'package:onayamijika/presentation/views/start_up/start_up_page.dart';
import 'package:onayamijika/utils/function_utils.dart';
import 'firebase_options.dart';

void main() async {
  // Firebaseの初期化
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // 位置情報確認ダイアログを表示
  // アプリ起動時の端末の位置情報も保持しておく
  FunctionUtils.instance.determinePosition();

  runApp(ProviderScope(
    overrides: [
      solutionSealRepositoryProvider
          .overrideWithProvider(firebaseSolutionSealRepositoryProvider),
      onayamiCardRepositoryProvider
          .overrideWithProvider(firebaseOnayamiCardRepositoryProvider),
      accountRepositoryProvider
          .overrideWithProvider(firebaseAccountRepositoryProvider)
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartUpPage(),
    );
  }
}
