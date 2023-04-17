import 'package:flutter/material.dart';

import '../widgets/shopping_item_widget.dart';

class ShoppingBagListComponent extends StatelessWidget {
  final Size size;
  const ShoppingBagListComponent({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ShoppingItemWidget(size: size);
      },
      separatorBuilder: (_, __) => SizedBox(height: size.height * 0.03),
      itemCount: 4,
    );
  }
}
