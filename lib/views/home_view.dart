import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:digital_invoicing/views/empty_view.dart';
import 'package:digital_invoicing/widgets/custom_floating_action_button.dart';
import 'package:digital_invoicing/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List<Widget> views = const [
    HomeViewBody(),
    EmptyView(),
    EmptyView(),
    EmptyView(),
    EmptyView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: views[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomFloatingActionButton(),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
          
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            if (value != 2) {
              currentIndex = value;
              setState(() {});
            }
          },
          currentIndex: currentIndex,
          backgroundColor: const Color(0xffF9F9F9),
          showUnselectedLabels: true,
          selectedItemColor: AppColors.purple,
          unselectedItemColor: const Color(0xff88888C),
          unselectedLabelStyle: Styles.gTWalsheimProMedium12.copyWith(
            color: const Color(0xff88888C),
          ),
          selectedLabelStyle: Styles.gTWalsheimProMedium12.copyWith(
            fontWeight: FontWeight.bold,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.description_outlined),
              label: 'Docs',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Docs',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Docs',
            ),
          ],
        ),
      ),
    );
  }
}
