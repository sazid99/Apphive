import 'package:flutter/material.dart';

class FilterBar extends StatelessWidget {
  final IconData icon;
  final String iconName;
  final Color bgColor;
  const FilterBar({
    super.key,
    required this.icon,
    required this.iconName,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 40,
            width: 40,
            color: bgColor,
            child: Icon(icon, size: 30, color: Colors.white),
          ),
        ),
        Text(iconName),
      ],
    );
  }
}

class FilterBarItem extends StatelessWidget {
  const FilterBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FilterBar(
          icon: Icons.videogame_asset,
          iconName: "Games",
          bgColor: Color(0xfffd8002),
        ),
        FilterBar(
          icon: Icons.android,
          iconName: "Apps",
          bgColor: Color(0xff53e817),
        ),
        FilterBar(
          icon: Icons.newspaper,
          iconName: "News",
          bgColor: Color(0xff36b8c9),
        ),
        FilterBar(
          icon: Icons.hub,
          iconName: "Store",
          bgColor: Color(0xffe34fba),
        ),
      ],
    );
  }
}
