import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UnreadMessagesPage extends StatelessWidget {
  final List<Map<String, String>> messages = [
    {
      'title': 'Nouvelle notification',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ullamcorper, odio ac dapibus vestibulum, nunc arcu imperdiet est, nec malesuada est eros quis sem.',
      'time': '10:30 AM'
    },
    {
      'title': 'Réunion importante',
      'content':
          'Sed quis efficitur mauris, vel tincidunt libero. Fusce euismod enim id ex placerat consectetur. Ut id leo eget lorem sollicitudin fermentum.',
      'time': 'Hier'
    },
    {
      'title': 'Nouvelle annonce',
      'content':
          'Duis at dolor nec risus commodo tempor nec vitae ligula. Ut ac orci ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.',
      'time': 'Hier'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 21, 94, 153),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Text(
                      "Messages Non Lus",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: messages.map((message) {
                  return _buildMessageItem(
                    message['title']!,
                    message['content']!,
                    message['time']!,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageItem(String title, String content, String time) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            content,
            style: GoogleFonts.poppins(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          Text(
            time,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
