// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:master_cooking/models/db_recipe.dart';

// class DatabaseService {
//   //collection reference
//   final CollectionReference recipeCollection =
//       Firestore.instance.collection('recipes');

//   // recipe list from snapshot
//   List<OnlineRecipe> _onlineRecipeFromSnapshot(QuerySnapshot snapshot) {
//     return snapshot.documents.map((doc) {
//       return OnlineRecipe(
//         rImgPath: doc.data['rImgPath'] ?? '',
//         rTitle: doc.data['rTitle'] ?? '',
//         rSubTitle: doc.data['rSubTitle'] ?? '',
//       );
//     }).toList();
//   }

//   Stream<List<OnlineRecipe>> get recipes {
//     return recipeCollection.snapshots().map(_onlineRecipeFromSnapshot);
//   }
// }
