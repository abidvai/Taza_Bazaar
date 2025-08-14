import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/features/shop/screen/personalization/screen/add_new_address/add_new_address_screen.dart';
import 'package:taza_bazar/features/shop/screen/personalization/screen/change_address/widgets/address_card.dart';

class ChangeAddressScreen extends StatelessWidget {
  const ChangeAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true, title: Text('Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              AddressCard(
                size: size,
                name: 'Abdullah Al Abid',
                number: '01770960950',
                address: 'House No.245, Uttara, Dhaka',
                showActive: true,
              ),
              SizedBox(height: size.height * .016),
              AddressCard(
                size: size,
                name: 'Abdullah Al Asif',
                number: '01770960950',
                address: 'House No.245, Uttara, Dhaka',
                showActive: false,
              ),
              SizedBox(height: size.height * .016),
              AddressCard(
                size: size,
                name: 'Asrafun Nessa',
                number: '01770960950',
                address: 'House No.245, Uttara, Dhaka',
                showActive: false,
              ),
              SizedBox(height: size.height * .016),
              AddressCard(
                size: size,
                name: 'Mariom Akther',
                number: '01770960950',
                address: 'House No.245, Uttara, Dhaka',
                showActive: false,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddNewAddressScreen());
        },
        child: Icon(Iconsax.add),
      ),
    );
  }
}
