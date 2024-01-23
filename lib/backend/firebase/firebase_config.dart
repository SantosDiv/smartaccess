import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' as service;
import 'package:yaml/yaml.dart';
// import 'package:smartaccess/backend/firebase_config.yml' as firebase_file;

Future initFirebase() async {
  final firebase_config = loadYaml(await service.rootBundle.loadString('assets/config/firebase_config.yaml'));

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: firebase_config['api_key'],
            authDomain: firebase_config['auth_domain'],
            projectId: firebase_config['project_id'],
            storageBucket: firebase_config['storage_bucket'],
            messagingSenderId: firebase_config['messaging_sender_id'],
            appId: firebase_config['app_id'],
            measurementId: firebase_config['measurement_id']));
  } else {
    await Firebase.initializeApp();
  }
}
