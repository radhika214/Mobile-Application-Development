import 'package:cloud_firestore/cloud_firestore.dart';
import '../../utils/constants.dart';
import '../models/product.dart';

class ProductRepository {
  FirebaseFirestore db = FirebaseFirestore.instance;

  add(Product product) {
    Future<DocumentReference> future =
        db.collection(Collections.PRODUCT).add(product.toJSON());

    return future;
  }

  Future<List<Product>> read() async {
    QuerySnapshot querySnapShot =
        await db.collection(Collections.PRODUCT).get();

    List<QueryDocumentSnapshot> list = querySnapShot.docs;

    List<Product> products = list
        .map((QueryDocumentSnapshot doc) => Product.takeProduct(
            name: doc["name"],
            desc: doc["desc"],
            price: doc["price"],
            qty: doc["qty"],
            url: doc["url"]))
        .toList();

    return products;

    // List of Products

    // View in List View

    // CircularProgressIndicator
  }
}
