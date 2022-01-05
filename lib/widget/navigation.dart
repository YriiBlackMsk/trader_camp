import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  int _selectedIndex = 0;
  void _onItemTapped(var text) {
    setState(() {
      _selectedIndex = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
      backgroundColor: Colors.amber[200],
      drawerDragStartBehavior: DragStartBehavior.down,
      drawerEdgeDragWidth: 70,
      body: const Center(child: Text('TraderCamp')),
      appBar: AppBar(
        title: const Text('TraderCamp'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          TextButton(
              onPressed: () {}, child: const Text('Вход'), style: buttonStyle),
        ],
      ),
      drawer: SizedBox(
        width: 250,
        child: Drawer(
          backgroundColor: Colors.amberAccent,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(image: AssetImage('assets/17.png')),
                    color: Colors.amber,
                  ),
                  child: Container(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 135,
                          width: 200,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100.0))),
                        ),
                      ],
                    ),
                  )),
              ListTile(
                leading: const Icon(Icons.engineering),
                title: const Text('Курсы обучения'),
                onTap: () {
                  Navigator.pushNamed(context, '/third');
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.theater_comedy),
                title: const Text('Наша команда'),
                onTap: () {
                  Navigator.pushNamed(context, '/second');
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.event),
                title: const Text('Мероприятия'),
                onTap: () {
                  Navigator.pushNamed(context, '/fourth');
                },
              ),
              const Divider(),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              padding: EdgeInsets.only(left: 15),
              splashColor: Colors.blue,
              color: Colors.green,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Оператор-89280382712')));
              },
              icon: const Icon(Icons.phone_android),
            ),
            IconButton(
                padding: EdgeInsets.only(left: 130),
                color: Colors.green,
                splashColor: Colors.blue,
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Электронная почта - support@yandex.ru')));
                },
                icon: const Icon(Icons.mail)),
            IconButton(
                padding: EdgeInsets.only(left: 130),
                splashColor: Colors.blue,
                color: Colors.green,
                highlightColor: Colors.white,
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('WhatsApp - 89380982526')));
                },
                icon: const Icon(Icons.message)),
          ],
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Привет'),
        BottomNavigationBarItem(icon: Icon(Icons.gps_fixed), label: 'Home'),
      ], currentIndex: _selectedIndex, onTap: _onItemTapped),
    );
  }
}
