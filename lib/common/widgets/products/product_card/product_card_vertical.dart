import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/shadows.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../icons/t_circular_icon.dart';
import '../../texts/product_title_texts.dart';
class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 150,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowsStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.white,
      ),
      child: Column(
        children: [
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor:  dark ? TColors.dark :TColors.light,
            child:  Stack(
              children: [

                TRoundedImage(imageUrl: TImages.productImage1,applyImageRadius: true,),

                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: EdgeInsets.symmetric(horizontal: TSizes.sm,vertical:  TSizes.xs),
                    child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                  ),
                ),


                const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(icon: Iconsax.heart5,color: Colors.red,))
              ],
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems/2,),

          const Padding(
            padding: EdgeInsets.only(left: TSizes.sm),
            child: Column(
              children: [
                TProductTitleText(title: 'Green Nike Air Shoes',smallSize: true,)
              ],
            ),
          ),

        ],
      ),
    );
  }
}


