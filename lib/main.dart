import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/style/theme.dart';
import 'src/utils/theme_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeNotifier>(context).isDarkTheme
          ? AppTheme.darkTheme
          : AppTheme.lightTheme,
      themeMode: ThemeMode.system,
      home: const AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          themeNotifier.toggleTheme();
        },
        child: Icon(
          themeNotifier.isDarkTheme ? Icons.wb_sunny : Icons.nightlight_round,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView(
          children: [
            Text(
              "Heading 2 / displayMedium",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              "Heading 3 / displaySmall",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              "headlineLarge",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              "Heading 4 / headlineMedium",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "Heading 5 / headlineSmall",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              "Heading 6 / titleLarge",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "Subtitle 1 / titleMedium",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "Subtitle 2 / titleSmall",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "Body 1 / bodyLarge",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "Body 2 / bodyMedium",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "Caption / bodySmall",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              "Button / labelLarge",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              "labelMedium",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              "Overline / labelSmall",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined Button"),
            ),
          ],
        ),
      ),
    );
  }
}
