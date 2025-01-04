import 'package:flutter/material.dart';
import 'package:proj/providers/locale_provider.dart';
import 'package:proj/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import '../widgets/custom_button.dart';
import 'settings_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Azam App'),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {
              Locale currentLocale = Localizations.localeOf(context);
              if (currentLocale.languageCode == 'en') {
                Provider.of<LocaleProvider>(context, listen: false)
                    .setLocale(const Locale('ar'));
              } else {
                Provider.of<LocaleProvider>(context, listen: false)
                    .setLocale(const Locale('en'));
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Login',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
