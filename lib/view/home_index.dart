import 'package:flutter/material.dart';
import 'package:the_earth/view/pagesViewPlant/planet/planet_page.dart';

class HomeDrawer extends StatefulWidget {
  final Widget? child;
  final String? title;

  const HomeDrawer({Key? key, this.child, this.title = 'W_Components'}) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Center(child: PlanetPage()),
      ),
    );
  }
}

class DrawerOnly extends StatelessWidget {
  const DrawerOnly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // them moi man hinh demo tai day
    List<RouteMapWidget> listRouteNavigate = [
      RouteMapWidget(name: 'TextFormField', screenDemo: const PlanetPage()),
    ];
    return Drawer(
        child: ListView(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(color: Colors.grey),
          height: 60,
          child: Center(
            child: Text(
              '${listRouteNavigate.length} Components',
            ),
          ),
        ),
        ...List.generate(
          listRouteNavigate.length,
          (index) => ListTile(
            title: Text(listRouteNavigate[index].name),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDrawer(
                            child: listRouteNavigate[index].screenDemo,
                            title: listRouteNavigate[index].name,
                          )));
            },
          ),
        )
      ],
    ));
  }
}

class RouteMapWidget {
  String name;
  Widget screenDemo;

  RouteMapWidget({required this.name, required this.screenDemo});
}
