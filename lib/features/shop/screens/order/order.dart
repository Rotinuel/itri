import 'package:flutter/material.dart';
import 'package:itri/common/widgets/appbar/appbar.dart';
import 'package:itri/features/shop/screens/order/widgets/orders_list.dart';
import 'package:itri/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(title: Text('My Order', style: Theme.of(context).textTheme.headlineSmall), showBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(ISizes.defaultSpace),
        child: IOrderListItems()
      ),
    );
  }
}