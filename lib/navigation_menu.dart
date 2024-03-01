import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedindex.value,
          onDestinationSelected: (index){
            controller.selectedindex.value = index;
          },
        backgroundColor: darkMode?TColors.black:TColors.white,
        indicatorColor: darkMode?TColors.white.withOpacity(0.1): TColors.black.withOpacity(0.1),
          destinations: const[
           NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
           NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
           NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
           NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedindex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final RxInt selectedindex =0.obs;

  final screens =[HomeScreen(),Container(color: Colors.red,),Container(color: Colors.orangeAccent,),Container(color: Colors.blue,),];

}