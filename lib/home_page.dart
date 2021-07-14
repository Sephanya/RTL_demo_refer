import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Localization"),
      ),
      body: Container(
        child: Center(
          child: LocaleText(
            "welcome",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[700],
        child: Icon(Icons.language_outlined,),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => LanguagePage()),
        ),
      ),
    );
  }
}

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: LocaleText("language"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("English"),
            onTap: () => LocaleNotifier.of(context)!.change('en'),
          ),
          ListTile(
            title: Text("دری"),
            onTap: () => LocaleNotifier.of(context)!.change('fa'),
          ),
        ],
      ),
    );
  }
}