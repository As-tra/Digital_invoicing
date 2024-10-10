import 'package:digital_invoicing/utils/assets.dart';
import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/widgets/custom_floating_action_button.dart';
import 'package:digital_invoicing/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: const HomeViewBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomFloatingActionButton(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.imagesDashboard),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.imagesDocument),
            label: 'Docs',
          ),
          const BottomNavigationBarItem(
            icon: SizedBox(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.imagesUser),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.imagesSetting),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
