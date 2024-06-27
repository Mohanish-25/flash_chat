import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class FirebaseInitializer {
  static Future<void> initializeFirebase() async {
    await dotenv.load(fileName: ".env");
    final apiKey = dotenv.env['API_KEY'];
    final appId = dotenv.env['APP_ID'];
    final messagingSenderId = dotenv.env['MESSAGING_SENDER_ID'];
    final projectId = dotenv.env['PROJECT_ID'];

    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: apiKey ?? '',
        appId: appId ?? '',
        messagingSenderId: messagingSenderId ?? '',
        projectId: projectId ?? '',
      ),
    );
  }
}
