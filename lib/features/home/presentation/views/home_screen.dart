import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/features/home/presentation/views/widgets/container_bottom_nav.dart';
import 'package:doctor_hunt_app/features/home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const HomeBody(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: AppColors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: AppColors.grey,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: ContainerBottomNav(
                currentIndex: currentIndex == 0,
                iconData: Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: ContainerBottomNav(
                currentIndex: currentIndex == 1,
                iconData: Icons.favorite,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: ContainerBottomNav(
                currentIndex: currentIndex == 2,
                iconData: Icons.menu_book_rounded,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: ContainerBottomNav(
                currentIndex: currentIndex == 3,
                iconData: Icons.message_rounded,
              ),
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
