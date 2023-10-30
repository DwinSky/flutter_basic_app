import 'package:flutter/material.dart';
import 'package:flutter_basic_app/dialog/dialog_flutter.dart';

class DrawerFlutter extends StatefulWidget {
  const DrawerFlutter({super.key});

  @override
  State<DrawerFlutter> createState() => _DrawerFlutterState();
}

class _DrawerFlutterState extends State<DrawerFlutter> {
  bool pinned = false;
  bool floating = false;
  bool snap = false;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Drawer Flutter'),
          centerTitle: true,
        ),
        endDrawer: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                Container(
                  color: Colors.blue,
                  child: const UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                          child: FlutterLogo(
                        size: 50,
                      )),
                      decoration: BoxDecoration(color: Colors.grey),
                      accountName: Text(
                        'DwinSky',
                        style: TextStyle(color: Colors.black),
                      ),
                      accountEmail: Text(
                        'dwinsky@email.com',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                ListTile(
                  title: const Text('Menu 1'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: const Text('Menu 2'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: pinned,
              snap: snap,
              floating: floating,
              expandedHeight: 160,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text('Sliver App Bar'),
                background: FlutterLogo(),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.blue,
                height: 100,
                child: Center(
                  child: Text(
                    '$index',
                    textScaleFactor: 5,
                  ),
                ),
              );
            }, childCount: 20))
          ],
        ));
  }
}

// Container(
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           children: [
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context)
//                       .push(MaterialPageRoute(builder: (context) {
//                     return const DialogFlutter();
//                   }));
//                 },
//                 child: const Text('Pergi ke Dialog')),
            
//           ],
//         ),
//       ),
