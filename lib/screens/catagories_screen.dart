import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/catagory_item.dart';

class CatagoriesScreen extends StatelessWidget {
  const CatagoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        ...DUMMY_CATEGORIES
            .map((catData) =>
                CatagoryItem(catData.id, catData.title, catData.color))
            .toList()
      ],
    );
  }
}
