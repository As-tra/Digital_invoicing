import 'package:device_preview/device_preview.dart';
import 'package:digital_invoicing/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) {
        return const DigitalInvoicing();
      },
    ),
  );
}

class DigitalInvoicing extends StatelessWidget {
  const DigitalInvoicing({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
