import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/common/widgets/filled_button.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/widgets/text_input_field.dart';

class AddNewAddressScreen extends StatelessWidget {
  AddNewAddressScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Add new Address'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.height * .024),
        child: Column(
          children: [
            SizedBox(height: size.height * .05,),
            aTextInputField(hint: 'Name', prefix: Iconsax.user, validation: (value){}, controller: nameController),
            SizedBox(height: size.height * .016,),
            aTextInputField(hint: 'Phone Number', prefix: Iconsax.mobile, validation: (value){}, controller: phoneNumberController),
            SizedBox(height: size.height * .016,),
        
            Row(
              children: [
                Expanded(child: aTextInputField(hint: 'Street', prefix: Icons.edit_road_outlined, validation: (value){}, controller: streetController)),
                SizedBox(width: size.width * .016,),
                Expanded(child: aTextInputField(hint: 'Postal Code', prefix: Iconsax.computing, validation: (value){}, controller: postalCodeController)),
              ],
            ),
        
            SizedBox(height: size.height * .016,),
        
            Row(
              children: [
                Expanded(child: aTextInputField(hint: 'City', prefix: Iconsax.house, validation: (value){}, controller: cityController)),
                SizedBox(width: size.width * .016,),
                Expanded(child: aTextInputField(hint: 'State', prefix: Icons.analytics_outlined, validation: (value){}, controller: stateController)),
              ],
            ),
        
            SizedBox(height: size.height * .016,),
            aTextInputField(hint: 'Country', prefix: Iconsax.global, validation: (value){}, controller: countryController),
            SizedBox(height: size.height * .030,),
            AFilledButton(context, 'Save', (){})
          ],
        ),
      ),
    );
  }
}
