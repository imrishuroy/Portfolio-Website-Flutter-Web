import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        if (size.isMobile) {
          return Container(
            height: 60,
            width: double.infinity,
            color: Colors.blue,
            child: Row(
              children: [
                SizedBox(width: 20.0),
                Image.asset(
                  'assets/images/logo.png',
                  height: 30.0,
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                )
              ],
            ),
          );
        }
        //final text = 'About Me';
        final onPressed = () => print('Clicked');
        return Container(
          height: 100,
          width: 1005,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Image.asset('assets/images/logo.png'),
              Spacer(),
              for (var item in kNavigationItems)
                NavigationBarItem(text: item.text, onClicked: onPressed)
            ],
          ),
        );
      },
    );
  }
}

class NavigationItem {
  final String text;
  final Icon icon;

  NavigationItem(this.text, {this.icon});
}

// Global Variable
final kNavigationItems = [
  NavigationItem('Projects'),
  NavigationItem('Skills'),
  NavigationItem('About Me'),
  NavigationItem('Blog'),
];

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    Key key,
    @required this.text,
    @required this.onClicked,
  });

  final String text;
  final void Function() onClicked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 64.0),
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onClicked,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (!size.isMobile) return SizedBox();
        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text('Rishu Roy'),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.blue,
                    ],
                    tileMode: TileMode.repeated,
                  ),
                ),
              ),
              for (var item in kNavigationItems)
                ListTile(
                  onTap: () {},
                  title: Text(item.text),
                )
            ],
          ),
        );
      },
    );
  }
}
