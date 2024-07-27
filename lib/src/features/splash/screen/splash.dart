import 'dart:developer';

import 'package:el_cabanyal/src/config/routes/app_routes.dart';
import 'package:el_cabanyal/src/core/assets_repo/svg_repo.dart';
import 'package:el_cabanyal/src/core/services/provider/data_provider.dart';
import 'package:el_cabanyal/src/core/widgets/cus_navigations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    DataProvider provider = Provider.of<DataProvider>(context, listen: false);
    await provider.loadMenuData();
    await provider.loadCategoryData();
    await provider.loadItemData();
    await provider.loadModifiersData();
    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushReplacementNamed(context, AppRoutes.home);
  }

  void appInit() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(SvgRepo.logo, height: 100),
      ),
    );
  }
}
