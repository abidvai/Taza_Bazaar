import 'package:flutter/material.dart';
import 'package:taza_bazar/utils/constants/images.dart';
import 'package:taza_bazar/utils/constants/widgets/filled_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  late var isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Text('Shop Smarter'),
          Text(
            'Log in to Access Exclusive Deals and Simplify Your Shopping Experience',
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.play_arrow_outlined),
              suffixIcon: Icon(Icons.visibility_off_outlined),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isCheck,
                    onChanged: (value) {
                      isCheck = value!;
                    },
                  ),
                  Text('Remember Me'),
                ],
              ),
              Text('Forget Password?'),
            ],
          ),
          AFilledButton(context, 'Sign In', () {}),
          SizedBox(height: 20,),
          AFilledButton(context, 'Create Account', () {}),
          Row(
            children: [
              Expanded(child: Divider()),
              SizedBox(width: 20,),
              Text('Or Sign In With'),
              SizedBox(width: 20,),
              Expanded(child: Divider()),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle
            ),
            child: Image.asset(AImages.google),
          )
        ],
      ),
    );
  }
}
