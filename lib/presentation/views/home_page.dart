import 'package:apphive/presentation/widgets/apphive_download_listtile.dart';
import 'package:apphive/presentation/widgets/custom_carousel_slider.dart';
import 'package:apphive/presentation/widgets/custom_drawer.dart';
import 'package:apphive/presentation/widgets/custom_floating_ab.dart';
import 'package:apphive/presentation/widgets/home_page_apps_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/filter_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(child: Drawer(child: CustomDrawer())),
      appBar: AppBar(
        backgroundColor: Color(0xff1fd281),
        foregroundColor: Colors.white,
        title: Text("Apphive", style: GoogleFonts.audiowide(fontSize: 30)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 30)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 5,
          children: [
            SizedBox(height: 1),
            CustomCarouselSlider(),
            SizedBox(height: 1),
            FilterBarItem(),
            Divider(thickness: 4, color: Color(0xffebeaea)),
            ApphiveDownloadListtile(),
            Divider(thickness: 4, color: Color(0xffebeaea)),
            ListTile(
              title: Text(
                'Popular Apps',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios, size: 20),
              ),
            ),
            Column(children: [HomePageAppsWidget()]),
            Divider(thickness: 4, color: Color(0xffebeaea)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          CustomFloatingAb(
            fabColor: Color(0xfff7b52d),
            fabIcon: Icons.notifications,
          ),
          CustomFloatingAb(fabColor: Color(0xfffa6410), fabIcon: Icons.share),
          CustomFloatingAb(
            fabColor: Color(0xff31b25e),
            fabIcon: Icons.chat_bubble,
          ),
        ],
      ),
    );
  }
}
