import 'package:flutter/material.dart';

void main() => runApp(const LoginScreen());

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Login(),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Stock and Inventory')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Container(
                    height: 132,
                    width: MediaQuery.of(context).size.width,
                    child:  Image.asset(
                      'images/kindpng_2350524.png',
                    )),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: const Text('Main Menu'),
                onTap: () {},
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: const Text('Staff'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.storefront_rounded),
                title: const Text('Store Keeper'),
                onTap: () {},
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              ListTile(
                leading: Icon(Icons.devices),
                title: const Text('Devices'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.book_rounded),
                title: const Text('Reports'),
                onTap: () {},
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.help_rounded),
                title: const Text('Help'),
                onTap: () {},
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip_rounded),
                title: const Text('Privacy Policy'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout_rounded),
                title: const Text('Log Out'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Center(
          child: Row(
            children: [Text('hello')],
          ),
        ));
  }
}
