import 'package:flutter/material.dart';

class ApphiveDownloadListtile extends StatelessWidget {
  const ApphiveDownloadListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.phone_android, size: 35, color: Color(0xff1fd281)),
      title: Text('Use Apphive Mobile App'),
      subtitle: Text('Fast and Safe'),
      trailing: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff1fd281),
          foregroundColor: Colors.white,
        ),
        child: Text('Download'),
      ),
    );
  }
}
