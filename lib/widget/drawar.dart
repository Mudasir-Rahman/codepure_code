import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawar extends StatefulWidget {
  const MyDrawar({super.key});

  @override
  State<MyDrawar> createState() => _MyDrawarState();
}

class _MyDrawarState extends State<MyDrawar> {
  @override
  Widget build(BuildContext context) {
    const accentColor = Color(0xFF6750A4);

    return Drawer(
      backgroundColor: const Color(0xFFF8F7FC),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 210,
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 22),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF7657C8), Color(0xFF49328E)],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white70, width: 1.5),
                    ),
                    child: const CircleAvatar(
                      radius: 31,
                      backgroundImage: AssetImage('assets/image/profile.jpg'),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'Mudaser Rahman',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'nudaser.rahman@example.com',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(14, 22, 14, 12),
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12, bottom: 10),
                    child: Text(
                      'MENU',
                      style: TextStyle(
                        color: Color(0xFF797583),
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  _DrawerItem(
                    icon: CupertinoIcons.home,
                    title: 'Home',
                    selected: true,
                    accentColor: accentColor,
                    onTap: () {},
                  ),
                  _DrawerItem(
                    icon: CupertinoIcons.profile_circled,
                    title: 'Profile',
                    accentColor: accentColor,
                    selected: false,
                    onTap: () {},
                  ),
                  _DrawerItem(
                    icon: CupertinoIcons.mail,
                    title: 'Email Me',
                    accentColor: accentColor,

                    selected: false,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const Divider(height: 1, indent: 24, endIndent: 24),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: Text(
                'Codepure Code',
                style: TextStyle(color: Color(0xFF797583), fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    required this.icon,
    required this.title,
    required this.accentColor,
    this.selected = false,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final Color accentColor;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: ListTile(
        selected: selected,
        selectedTileColor: accentColor,
        selectedColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        leading: Icon(icon, size: 21),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
