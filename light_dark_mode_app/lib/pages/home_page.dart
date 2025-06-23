import 'package:flutter/material.dart';
import 'package:light_dark_mode_app/components/box.dart';
import 'package:light_dark_mode_app/components/button.dart';
import 'package:light_dark_mode_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Box(
          color: Theme.of(context).colorScheme.primary,
          child: Button(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toogleTheme();
            },
          ),
        ),
      ),
    );
  }
}
