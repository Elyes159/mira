import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminChatPage extends StatefulWidget {
  @override
  _AdminChatPageState createState() => _AdminChatPageState();
}

class _AdminChatPageState extends State<AdminChatPage> {
  List<String> messages = [
    'Bonjour !',
    'Comment puis-je vous aider ?',
    'Quand aura lieu la prochaine réunion ?',
    'La réunion est prévue pour le 30 avril.',
    'Merci ',
    'derien'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 21, 94, 153),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Center(
              child: Text(
                'Chat',
                style: GoogleFonts.poppins(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return _buildChatBubble(messages[index]);
              },
            ),
          ),
          _buildChatInput(),
        ],
      ),
    );
  }

  Widget _buildChatBubble(String message) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
          ),
        ),
        child: Text(
          message,
          style: GoogleFonts.poppins(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  Widget _buildChatInput() {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Écrivez votre message...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          IconButton(
            onPressed: () {
              // Ajoutez ici la logique pour envoyer le message
            },
            icon: Icon(Icons.send),
            color: const Color.fromARGB(255, 21, 94, 153),
          ),
        ],
      ),
    );
  }
}
