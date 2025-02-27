import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageAppsWidget extends StatefulWidget {
  const HomePageAppsWidget({super.key});

  @override
  State<HomePageAppsWidget> createState() => _HomePageAppsWidgetState();
}

class _HomePageAppsWidgetState extends State<HomePageAppsWidget> {
  Future<void> _launchURL() async {
    final Uri url = Uri.parse(
      'https://drive.google.com/file/d/1fyeQpO8DJaF4A8TKN-stmDYnKAcGXfrU/view?usp=drive_link',
    );

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1, color: Colors.tealAccent),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Image.network(
                  'https://i.postimg.cc/prnyrRR9/Download-now-and-take-control-of-your-academic-life-today-Schedule.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Expanded(
                flex: 2,
                child: ListTile(
                  leading: Image.asset(
                    'assets/schedule.png',
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                  title: Text('Schedule'),
                  subtitle: Text('Free'),
                  trailing: ElevatedButton(
                    onPressed: _launchURL,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff1fd281),
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Download'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
