import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/utils/constants/colors.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('My Orders'),
        clipBehavior: Clip.antiAlias,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .040),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * .020),
            child: Column(
              children: [
                OrderCard(size: size, status: 'Processing', statusDate: '03 Aug 2025', orderNumber: 'GYS324', orderDate: '01 Jan 2025',),
                SizedBox(height: size.height * .016,),
                OrderCard(size: size, status: 'Confirmed', statusDate: '03 Aug 2025', orderNumber: 'GYS324', orderDate: '01 Jan 2025',),
                SizedBox(height: size.height * .016,),
                OrderCard(size: size, status: 'Delivered', statusDate: '03 Aug 2025', orderNumber: 'GYS324', orderDate: '01 Jan 2025',),
                SizedBox(height: size.height * .016,),
                OrderCard(size: size, status: 'Processing', statusDate: '03 Aug 2025', orderNumber: 'GYS324', orderDate: '01 Jan 2025',),
                SizedBox(height: size.height * .016,),
                OrderCard(size: size, status: 'Confirmed', statusDate: '03 Aug 2025', orderNumber: 'GYS324', orderDate: '01 Jan 2025',),
                SizedBox(height: size.height * .016,),
                OrderCard(size: size, status: 'Processing', statusDate: '03 Aug 2025', orderNumber: 'GYS324', orderDate: '01 Jan 2025',),
                SizedBox(height: size.height * .016,),
                OrderCard(size: size, status: 'Delivered', statusDate: '03 Aug 2025', orderNumber: 'GYS324', orderDate: '01 Jan 2025',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String status;
  final String statusDate;
  final String orderNumber;
  final String orderDate;

  const OrderCard({
    super.key,
    required this.size, required this.status, required this.statusDate, required this.orderNumber, required this.orderDate,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * .036),
      width: size.width,
      height: size.height * .16,
      decoration: BoxDecoration(
          color: AColors.yellow.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.transparent)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(status, style: Theme
                .of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: AColors.primary),),
            subtitle: Text(statusDate, style: Theme
                .of(context)
                .textTheme
                .titleLarge,),
            leading: Icon(Icons.loop_outlined),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Order', style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: AColors.black.withValues(alpha: 0.4)),),
                  subtitle: Text(orderNumber, style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge),
                  leading: Icon(Iconsax.tag),
                ),
              ),
              SizedBox(width: size.width * .070,),
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Order', style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: AColors.black.withValues(alpha: 0.4))),
                  subtitle: Text(orderDate, style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge),
                  leading: Icon(Icons.shopping_bag_outlined),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
