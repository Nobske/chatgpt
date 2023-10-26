import 'package:chatgpt/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

//init

Future<void> main() async {
  try {
    await dotenv.load(fileName: ".env");
    runApp(const MyApp());
  } catch (e) {
    print("Error loading .env: $e");
  }
}
// if (dotenv.isInitialized) {
//  String openAIApiKey = dotenv.env['OPENAI_API_KEY'] ?? 'default_value';
//}
//}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
