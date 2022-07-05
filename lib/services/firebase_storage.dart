import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class FirabeStorageService {
  static Future<String> getFile(String name) {
    final firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;
    final firebase_storage.Reference ref = storage.ref(name);
    return ref.getDownloadURL();
  }

  static Future<List<String>> getImagesUrl(List<String> names) async {
    final firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;
    final urls = <String>[];
    for (final n in names) {
      final firebase_storage.Reference ref = storage.ref('images/$n');
      urls.add(await ref.getDownloadURL());
    }
    return urls;
  }
}
