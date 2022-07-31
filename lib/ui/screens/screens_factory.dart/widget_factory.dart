import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../home_screen/home_model_widget.dart';
import '../home_screen/home_screen_widget.dart';

class ScreensFactory {
  Widget makeHomeWidget() => ChangeNotifierProvider(
        create: (context) => HomeModelWidget(),
        child: const HomeScreenWidget(),
      );
}
