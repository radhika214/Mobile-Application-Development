// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:seller_app/modules/models/product.dart';
// import 'package:seller_app/modules/repository/product_repo.dart';
// import 'package:seller_app/modules/widgets/custom_text.dart';
// import '../../core/auth/models/message.dart';
// import '../../core/auth/models/user.dart' as UserClass;
// import '../../utils/constants.dart';

// class AddProduct extends StatelessWidget {
//   TextEditingController nameCtrl = TextEditingController();
//   TextEditingController descCtrl = TextEditingController();
//   TextEditingController priceCtrl = TextEditingController();
//   TextEditingController qtyCtrl = TextEditingController();

//   // Future<Message> addProduct(UserClass.User user) async {
//   //   try {
//   //     await FirebaseFirestore.instance
//   //         .collection(Collection.USERS)
//   //         .add({'user_email': user.userid});
//   //     Message message = Message.takeMessage(
//   //         message: 'Register SuccessFully', code: Constants.SUCCESS);
//   //     return message;
//   //   } catch (err) {
//   //     //  print(err.toString());
//   //     return Message.takeMessage(
//   //         message: 'Register Fails', code: Constants.FAIL);
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           'ADD Product',
//           style: TextStyle(fontSize: 40),
//         ),
//         CustomText(label: 'Type Name Here', tc: nameCtrl),
//         CustomText(
//           label: 'Type Desc Here',
//           tc: descCtrl,
//           isMultiLine: true,
//         ),
//         Slider(
//           value: 1,
//           onChanged: (currentValue) {
//             priceCtrl = currentValue;
//           },
//         ),
//         // Image Upload
//         CustomText(label: 'Type Qty Here', tc: qtyCtrl),
//         ElevatedButton(onPressed: () {
//           Product.takeProduct(name: nameCtrl.text, price: priceCtrl, qty: qtyCtrl.text, desc: descCtrl.text)
//           ProductRepository.add()
//         }, child: Text('Add Product'))
//       ],
//     );
//   }
// }
