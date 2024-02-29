import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import 'terms_conditions_checkbox.dart';


class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                  expands: false,
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                  expands: false,
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
            expands: false,
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          ///Email
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          ///PhoneNumber
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          ///Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),

          /// Terms & condition check box
          const TTermsAndConditionCheckbox(),
          const SizedBox(height: TSizes.spaceBtwSections,),
          ///Signup Button
          SizedBox(width: double.infinity,
            child: ElevatedButton(child: Text(TTexts.createAccount),onPressed: ()=> Get.to(()=>VerifyEmailScreen()),),),

        ],
      ),);
  }
}

