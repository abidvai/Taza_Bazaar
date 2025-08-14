import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/common/widgets/filled_button.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/widgets/text_input_field.dart';

class ChangeNameScreen extends StatelessWidget {
  ChangeNameScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Change Name'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.height * .024),
        child: Column(
          children: [
            SizedBox(height: size.height * .024,),
            Text(
              'Update your name to keep your profile accurate and personalized',
            ),
            SizedBox(height: size.height * .024,),
            aTextInputField(
              hint: 'First Name',
              prefix: Iconsax.profile_add,
              validation: (value) {},
              controller: nameController,
            ),
            SizedBox(height: size.height * .012,),
            aTextInputField(
              hint: 'Last Name',
              prefix: Iconsax.profile_add,
              validation: (value) {},
              controller: nameController,
            ),
            SizedBox(height: size.height * .024,),
            AFilledButton(context, 'Save', (){})
          ],
        ),
      ),
    );
  }
}
