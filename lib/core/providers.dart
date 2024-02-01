// import 'package:twitter_clone/constants/constants.dart';
//
// final appwriteClientProvider = Provider((ref) {
//   Client client = Client();
//   return client
//       .setEndpoint(AppWriteConstants.endpoint)
//       .setProject(AppWriteConstants.projectId)
//       .setSelfSigned(status: true);
// });
//
// final appwriteAccountProvider = Provider((ref) {
//   final client = ref.watch(appwriteClientProvider);
//   return Account(client);
// });
//
// final appwriteDatabaseProvider = Provider((ref) {
//   final client = ref.watch(appwriteClientProvider);
//   return Databases(client);
// });
//
// final appwriteStorageProvider = Provider((ref) {
//   final client = ref.watch(appwriteClientProvider);
//   return Storage(client);
// });
//
// final appwriteRealtimeProviderForTweets = Provider((ref) {
//   final client = ref.watch(appwriteClientProvider);
//   return Realtime(client);
// });
//
// final appwriteRealtimeProviderForUsers = Provider((ref) {
//   final client = ref.watch(appwriteClientProvider);
//   return Realtime(client);
// });
//
// final appwriteRealtimeProviderForNotifications = Provider((ref) {
//   final client = ref.watch(appwriteClientProvider);
//   return Realtime(client);
// });
