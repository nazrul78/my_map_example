// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:muhurto/src/hive_models/reminder.dart';
// import 'package:get/get.dart';
// import 'package:muhurto/src/hive_models/snooze.dart';
// import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path_provider_android/path_provider_android.dart';

// class HiveService extends GetxService {
//   Future<void> onInitForApp() async {
//     Directory appDocumentDir = await getApplicationDocumentsDirectory();

//     Hive.init(appDocumentDir.path);

//     Hive
//       ..registerAdapter(KReminderAdapter())
//       // ..registerAdapter(RecurringReminderAdapter())
//       ..registerAdapter(SnoozeAdapter());

//     await Hive.openBox<KReminder>('reminders');
//     // await Hive.openBox<RecurringReminder>('recurringReminders');
//     await Hive.openBox<Snooze>('snooze');

//     print('Hive initialized onInitForApp');
//   }

//   Future<void> onInitForBackground() async {
//     if (Platform.isAndroid) PathProviderAndroid.registerWith();

//     WidgetsFlutterBinding.ensureInitialized();
//     Directory appDocumentDir = await getApplicationDocumentsDirectory();

//     Hive.init(appDocumentDir.path);

//     if (!Hive.isAdapterRegistered(0)) {
//       Hive
//         ..registerAdapter(
//           KReminderAdapter(),
//         );
//     }
//     if (!Hive.isAdapterRegistered(1)) {
//       Hive
//         ..registerAdapter(
//           SnoozeAdapter(),
//         );
//     }

//     await Hive.openBox<KReminder>('reminders');
//     await Hive.openBox<Snooze>('snooze');

//     print('Hive initialized for Background');
//   }

//   Future<void> closeHiveBoxes() {
//     return Hive.close();
//   }
// }